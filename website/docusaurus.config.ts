import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

const versionsConfig = require('./versions_config.json') as Record<string, import('@docusaurus/plugin-content-docs').VersionOptions>;

const lastVersion = '1.28';

const config: Config = {
  title: 'CloudNativePG',
  tagline: 'Run PostgreSQL.The Kubernetes way.',
  favicon: 'img/favicon.ico',

  // Future flags, see https://docusaurus.io/docs/api/docusaurus-config#future
  future: {
    v4: true, // Improve compatibility with the upcoming Docusaurus v4
  },

  // Set the production url of your site here
  url: 'https://cloudnative-pg.github.io',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: '/docs-new/',

  // GitHub pages deployment config.
  organizationName: 'cloudnative-pg',
  projectName: 'docs-new',
  deploymentBranch: 'gh-pages',

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'throw',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          path: 'docs',
          sidebarPath: require.resolve('./sidebars.js'),
          routeBasePath: '/',
          includeCurrentVersion: true, // Include the current version in the sidebar
          lastVersion: lastVersion,
          versions: versionsConfig,
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],
  themes: [
    [
      require.resolve("@easyops-cn/docusaurus-search-local"),
      /** @type {import("@easyops-cn/docusaurus-search-local").PluginOptions} */
      ({
        hashed: true,
        docsDir: ['docs'],
        searchResultLimits: 8,
        searchResultContextMaxLength: 50,
        language: ["en"],
        // Only index headings and content
        indexBlog: false,
        indexPages: false,
      }),
    ],
  ],

  themeConfig: {
    image: 'img/cloudnativepg-social-card.png',
    navbar: {
      title: 'CloudNativePG',
      logo: {
        alt: 'CloudNativePG Logo',
        src: 'img/hero_image.svg',
        href: 'https://cloudnative-pg.io',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'docs',
          position: 'left',
          label: 'Documentation',
        },
        {
            type: 'docsVersionDropdown',
            position: 'right',
            versions: Object.keys(versionsConfig).sort((a, b) => {
                if (a === 'current') return -1;
                if (b === 'current') return 1;
                return b.localeCompare(a, undefined, { numeric: true });
            }),
        },
          {
              href: "https://github.com/cloudnative-pg/",
              position: "right",
              className: "header-github-link",
              "aria-label": "GitHub repository",
          },

      ],
    },
    footer: {
        logo: {
            alt: 'CloudNativePG Logo',
            src: "img/cloudnativepg-landscape-white.png",
            href: "https://cloudnative-pg.io",
        },
      style: 'dark',
      links: [
        {
          title: 'Community',
          items: [
            {
              label: 'Slack',
              href: 'https://cloud-native.slack.com/messages/cloudnativepg-users',
            },
            {
              label: 'X',
              href: 'https://x.com/CloudNativePG',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'GitHub',
              href: 'https://github.com/cloudnative-pg/',
            },
            {
              label: 'CloudNativePG',
              href: 'https://cloudnative-pg.io',
            },
          ],
        },
      ],
      copyright: `
      Copyright © ${new Date().getFullYear()} CloudNativePG a Series of LF Projects, LLC.<br><br>

      For website terms of use, trademark policy and other project policies please see
      <a href="https://lfprojects.org/policies/">LF Projects, LLC Policies</a>.<br>
      <a href="https://www.linuxfoundation.org/trademark-usage/">The Linux Foundation has registered trademarks and uses trademarks</a>.<br>
      <a href="https://www.postgresql.org/about/policies/trademarks">Postgres, PostgreSQL and the Slonik Logo are
        trademarks or registered trademarks of the PostgreSQL Community Association of Canada, and
        used with their permission</a>.`
    },
      markdown: {
          mdx1Compat: {
            allowComments: true,
            allowHtml: true,
      },
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
  plugins: [
      [
          '@docusaurus/plugin-client-redirects',
          {
              redirects: [
                  {
                      to: `/${lastVersion}/`,
                      from: '/',
                  },
              ],
          },
      ],
  ],
};

export default config;
