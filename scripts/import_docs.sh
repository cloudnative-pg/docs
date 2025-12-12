#!/usr/bin/env bash

##
## Copyright © contributors to CloudNativePG, established as
## CloudNativePG a Series of LF Projects, LLC.
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
## SPDX-License-Identifier: Apache-2.0
##

set -euo pipefail

SOURCE_REPO="https://github.com/cloudnative-pg/cloudnative-pg.git"
SOURCE_DOCS_PATH="docs/src"
TMP_BASE="$(mktemp -d)"
trap 'rm -rf "$TMP_BASE"' EXIT

VERSION_ARG="${1:-}"
if [[ -z "$VERSION_ARG" ]]; then
  cat <<EOF
Usage: $0 <tag|main> [branch name]

This script brings in the documentation from GitHub at
github.com/cloudnative-pg/cloudnative-pg into the documentation repository.
The first argument can either be "main" to import the most recent development
snapshot or a specific version tag. The second argument is optional and allows
you to import the documentation using a specified Git reference rather than
the first argument.

### Examples:

To import the latest development snapshot:

    ./scripts/import_docs main

To import the documentation for a new release:

    ./scripts/import_docs v1.28.0

To update the existing documentation for the specified tag using the
release branch:

    ./scripts/import_docs v1.28.0 release-1.28

EOF
  exit 1
fi

GIT_REF="${2:-$1}"

# Normalize version label (strip leading 'v')
VERSION_LABEL="$(echo "$VERSION_ARG" | sed 's/^v//')"

echo "=== Import job starting for: $VERSION_ARG (label: $VERSION_LABEL) ==="
echo "Working temp: $TMP_BASE"

# Determine type
IS_MAIN=false
IS_RC=false

if [[ "$VERSION_ARG" == "main" ]]; then
  IS_MAIN=true
elif [[ "$VERSION_LABEL" =~ ^[0-9]+\.[0-9]+\.[0-9]+-rc[0-9]+$ ]]; then
  IS_RC=true
  VERSION_DIR=$(echo "$VERSION_ARG" | sed -E 's/^v([0-9]+.[0-9]+).*/\1/')
elif [[ "$VERSION_LABEL" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  VERSION_DIR=$(echo "$VERSION_ARG" | sed -E 's/^v([0-9]+.[0-9]+).*/\1/')
else
  echo "Invalid version argument: '$VERSION_ARG'"
  exit 1
fi

# Clone the repo
SRC_TMP="$TMP_BASE/source"
echo "Cloning $SOURCE_REPO ($VERSION_ARG) -> $SRC_TMP"

if ! git clone --depth 1 --branch "${GIT_REF}" "$SOURCE_REPO" "$SRC_TMP" 2>/dev/null; then
  echo "ERROR: failed to clone branch/tag for ${GIT_REF}."
  exit 1
else
  echo "Cloned using ref ${GIT_REF}"
fi

SOURCE_PATH="$SRC_TMP/$SOURCE_DOCS_PATH"
if [[ ! -d "$SOURCE_PATH" ]]; then
  echo "ERROR: expected docs folder at $SOURCE_PATH"
  exit 1
fi

# Install node modules if missing
if ! command -v yarn >/dev/null 2>&1; then
  echo "ERROR: yarn not found. Install Yarn."
  exit 1
fi

if [[ ! -d "node_modules" ]]; then
  echo "node_modules missing: running yarn install"
  yarn install --silent
fi

# ===== MAIN BRANCH =====
if [[ "$IS_MAIN" == true ]]; then
  echo "Copying imported docs -> ./docs"
  mkdir -p ./docs
  rsync -av --delete "$SOURCE_PATH/" --exclude "css" ./docs/

  echo "Updated ./docs from main — import completed."
  exit 0
fi

# ===== VERSION TAG =====
if grep -q "\"${VERSION_DIR}\"" versions.json 2>/dev/null; then
  # Import the new version in the correct folder
  TARGET_DIRECTORY="./versioned_docs/version-${VERSION_DIR}"
  echo "Copying imported docs -> ${TARGET_DIRECTORY}"
  rsync -av --delete "$SOURCE_PATH/" --exclude "css" "${TARGET_DIRECTORY}"
else
  # Create Docusaurus version
  echo "Running: yarn docusaurus docs:version ${VERSION_DIR}"
  yarn docusaurus docs:version "${VERSION_DIR}"

  # Import the new version in the correct folder
  TARGET_DIRECTORY="./versioned_docs/version-${VERSION_DIR}"
  echo "Copying imported docs -> ${TARGET_DIRECTORY}"
  rsync -av --delete "$SOURCE_PATH/" --exclude "css" "${TARGET_DIRECTORY}"

  echo "=== Done: Docusaurus version ${VERSION_DIR} created ==="
fi

# Mark RC as preview
VDIR="versioned_docs/version-${VERSION_DIR}"
if [[ "$IS_RC" == true ]]; then
  echo "Marking ${VDIR} as preview (rc)"
  echo "preview: true" > "${VDIR}/.preview"
fi

