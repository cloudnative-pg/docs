#!/usr/bin/env bash
set -euo pipefail

SOURCE_REPO="https://github.com/cloudnative-pg/cloudnative-pg.git"
SOURCE_DOCS_PATH="docs/src"
TMP_BASE="$(mktemp -d)"

VERSION_ARG="${1:-}"
if [[ -z "$VERSION_ARG" ]]; then
  echo "Usage: $0 <version|main>"
  exit 1
fi

# Normalize version label (strip leading 'v')
VERSION_LABEL="$(echo "$VERSION_ARG" | sed 's/^v//')"

echo "=== Import job starting for: $VERSION_ARG (label: $VERSION_LABEL) ==="
echo "Working temp: $TMP_BASE"

# Determine type
IS_MAIN=false
IS_RC=false
IS_STABLE=false

if [[ "$VERSION_ARG" == "main" ]]; then
  IS_MAIN=true
elif [[ "$VERSION_LABEL" =~ ^[0-9]+\.[0-9]+\.[0-9]+-rc[0-9]+$ ]]; then
  IS_RC=true
elif [[ "$VERSION_LABEL" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  IS_STABLE=true
else
  echo "Invalid version argument: '$VERSION_ARG'"
  exit 1
fi

# Clone the repo
SRC_TMP="$TMP_BASE/source"
echo "Cloning $SOURCE_REPO ($VERSION_ARG) -> $SRC_TMP"

if ! git clone --depth 1 --branch "${VERSION_ARG}" "$SOURCE_REPO" "$SRC_TMP" 2>/dev/null; then
  if git clone --depth 1 --branch "v${VERSION_LABEL}" "$SOURCE_REPO" "$SRC_TMP" 2>/dev/null; then
    echo "Cloned using tag v${VERSION_LABEL}"
  else
    echo "ERROR: failed to clone branch/tag for ${VERSION_ARG} (or v${VERSION_LABEL})."
    rm -rf "$TMP_BASE"
    exit 1
  fi
fi

SOURCE_PATH="$SRC_TMP/$SOURCE_DOCS_PATH"
if [[ ! -d "$SOURCE_PATH" ]]; then
  echo "ERROR: expected docs folder at $SOURCE_PATH"
  rm -rf "$TMP_BASE"
  exit 1
fi

# Install node modules if missing
if ! command -v yarn >/dev/null 2>&1; then
  echo "ERROR: yarn not found. Install Yarn."
  rm -rf "$TMP_BASE"
  exit 1
fi

if [[ ! -d "node_modules" ]]; then
  echo "node_modules missing: running yarn install"
  yarn install --silent
fi

# Backup docs
BACKUP_DOCS="$TMP_BASE/docs-backup"
if [[ -d "./docs" ]]; then
  echo "Backing up current ./docs -> $BACKUP_DOCS"
  mv ./docs "$BACKUP_DOCS"
fi

# Copy imported docs → ./docs
echo "Copying imported docs -> ./docs"
mkdir -p ./docs
rsync -a --delete "$SOURCE_PATH/" ./docs/

# ===== MAIN BRANCH =====
if [[ "$IS_MAIN" == true ]]; then
  echo "Updated ./docs from main — import completed."
  rm -rf "$TMP_BASE"
  exit 0
fi

# ===== VERSIONING =====
if [[ -f versions.json ]]; then
  if grep -q "\"${VERSION_LABEL}\"" versions.json 2>/dev/null; then
    echo "Version ${VERSION_LABEL} present — cleaning old artifacts"
    rm -rf "versioned_docs/version-${VERSION_LABEL}"
    rm -f  "versioned_sidebars/version-${VERSION_LABEL}-sidebars.json"
    TMPV="$(mktemp)"

    # jq → stable removal (if jq missing, skip)
    if command -v jq >/dev/null 2>&1; then
      jq -r "map(select(.!=\"${VERSION_LABEL}\"))" versions.json > "$TMPV" \
        && mv "$TMPV" versions.json
    else
      echo "WARNING: jq not installed — skipping removal of version from versions.json"
    fi
  fi
fi

# Create Docusaurus version
echo "Running: yarn docusaurus docs:version ${VERSION_LABEL}"
yarn docusaurus docs:version "${VERSION_LABEL}"

# Mark RC as preview
VDIR="versioned_docs/version-${VERSION_LABEL}"
if [[ "$IS_RC" == true ]]; then
  echo "Marking ${VDIR} as preview (rc)"
  echo "preview: true" > "${VDIR}/.preview"
fi

# Restore original docs
echo "Restoring original ./docs"
rm -rf ./docs
if [[ -d "$BACKUP_DOCS" ]]; then
  mv "$BACKUP_DOCS" ./docs
else
  echo "WARNING: No backup found — ./docs removed"
fi

rm -rf "$TMP_BASE"
echo "=== Done: Docusaurus version ${VERSION_LABEL} created ==="
exit 0
