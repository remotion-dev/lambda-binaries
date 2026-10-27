# Remotion Lambda binaries

This project has moved to [`packages/lambda-binaries` in the Remotion monorepo](https://github.com/remotion-dev/remotion/tree/main/packages/lambda-binaries).

This repository is archived and retained for its history. Make changes and open issues or pull requests in [`remotion-dev/remotion`](https://github.com/remotion-dev/remotion).

## Customize Lambda layers

```sh
git clone https://github.com/remotion-dev/remotion.git
cd remotion
bun install
cd packages/lambda-binaries
bun run download
```

The package downloads versioned binary archives from `remotion.media` on demand and verifies their SHA-256 checksums. Normal dependency installation and monorepo builds do not download the binaries.

See the [package README](https://github.com/remotion-dev/remotion/tree/main/packages/lambda-binaries#readme) for packaging and publishing commands, or the [custom-layer documentation](https://www.remotion.dev/docs/lambda/custom-layers) for deploying your own layers.
