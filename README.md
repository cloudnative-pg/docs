[![CloudNativePG](./logo/cloudnativepg.png)](https://cloudnative-pg.io/)

# CloudNativePG Documentation

**Chaos Documentation** is the initiative responsible for building and
maintaining the official documentation for
**[CloudNativePG](https://cloudnative-pg.io/)** — the open-source operator for
managing PostgreSQL workloads on Kubernetes from the CNCF.

---

## LFX Mentorship 2025/3

This repository is part of the [LFX Mentorship 2025/3](https://mentorship.lfx.linuxfoundation.org/project/86a647c1-88c7-474f-b093-6abb58197083)
programme, with **Anushka Saxena** as the mentee.
For more details, see [cloudnative-pg/cloudnative-pg#8122](https://github.com/cloudnative-pg/cloudnative-pg/issues/8122).

---

## Contributing

Contributions are welcome! If you’d like to improve the documentation or help
refine the tooling, please follow these steps:

1. **Fork** this repository and create a new branch for your changes.
2. Make your edits and ensure that all links and references are correct.
3. **Submit a pull request** with a clear description of what you’ve changed.

Before contributing, please review the [Code of Conduct](./CODE_OF_CONDUCT.md)
and make sure your work aligns with the project’s values and goals.

---

## Building the Documentation

# Website

This website is built using [Docusaurus](https://docusaurus.io/), a modern static website generator.

## Installation

Enter the `website` folder, then run:

```bash
yarn
```

## Local Development

```bash
yarn start
```

This command starts a local development server and opens up a browser window.
Most changes are reflected live without having to restart the server.

## Build

```bash
yarn build
```

This command generates static content into the `build` directory and can be
served using any static contents hosting service.

## Deployment

Using SSH:

```bash
USE_SSH=true yarn deploy
```

Not using SSH:

```bash
GIT_USER=<Your GitHub username> yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to
build the website and push to the `gh-pages` branch.

---

## Workflow

The documentation is updated from the upstream CloudNativePG project by the
[`sync_docs` workflow](.github/workflows/sync_docs.yml).

---

## License

This project is licensed under the [Apache License 2.0](./LICENSE).
