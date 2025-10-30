const fs = require('fs');
const path = require('path');
const glob = require('glob');

const DOCS_DIR = path.join(__dirname, 'docs');

// Use glob.sync with forward slashes
const files = glob.sync(path.join(DOCS_DIR, '**/*.md').replace(/\\/g, '/'));

console.log(`Found ${files.length} markdown files.`);

files.forEach(file => {
  let content = fs.readFileSync(file, 'utf8');

  // Match frontmatter (--- at start, then anything, then ---)
  const fmMatch = content.match(/^---\r?\n([\s\S]*?)\r?\n---/);
  if (fmMatch) {
    let fmContent = fmMatch[1];

    // Only add id if not present
    if (!/^id:/m.test(fmContent)) {
      const titleMatch = fmContent.match(/^\s*title:\s*(.+)$/m);
      const titleLine = titleMatch ? `title: ${titleMatch[1]}` : '';

      const sidebarMatch = fmContent.match(/^\s*sidebar_position:\s*(.+)$/m);
      const sidebarLine = sidebarMatch ? `sidebar_position: ${sidebarMatch[1]}` : '';

      // Generate ID from filename (kebab-case)
      const id = path.basename(file, path.extname(file))
        .trim()
        .toLowerCase()
        .replace(/\s+/g, '-');

      const newFM = ['---', `id: ${id}`, sidebarLine, titleLine, '---']
        .filter(Boolean)
        .join('\n');

      const restContent = content.slice(fmMatch[0].length).trimStart();
      fs.writeFileSync(file, newFM + '\n\n' + restContent, 'utf8');

      console.log(`Updated frontmatter: ${file}`);
    }
  } else {
    // No frontmatter at all
    const id = path.basename(file, path.extname(file))
      .trim()
      .toLowerCase()
      .replace(/\s+/g, '-');
    const title = id.replace(/-/g, ' ');

    const newFM = `---
id: ${id}
title: ${title}
---`;

    fs.writeFileSync(file, newFM + '\n\n' + content, 'utf8');
    console.log(`Added frontmatter: ${file}`);
  }
});

console.log('Frontmatter conversion complete.');
