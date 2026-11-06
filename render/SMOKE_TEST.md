# HyperFrames smoke setup workflow

Workflow: `.github/workflows/hyperframes-smoke.yml`

## Run it

1. Open the repository on GitHub.
2. Select **Actions**.
3. Select **HyperFrames local-renderer smoke setup**.
4. Select **Run workflow** on the intended branch.

It is manual-only and uses a public GitHub-hosted runner. It installs Node.js 22, FFmpeg and the pinned open-source HyperFrames CLI v0.9.19, initializes an isolated synthetic project, and requests local browser setup.

## What it proves

A successful run proves that the CLI can be installed and its setup/browser commands complete on that runner. Review the logs, especially the doctor output and browser installation.

## What it does not prove

It does not render an MP4, validate a finished composition, measure long-video performance, or establish private asset delivery. Do not describe this as an end-to-end render test.

## Privacy and cost boundary

The repository is public. Workflow logs are visible to people who can read the repository. This workflow contains no secrets and uses no user production assets. It does not upload artifacts or publish videos. Do not add private scripts, footage, voice recordings, credentials or final videos to this public repository.

## Next milestone

After a successful setup run, create a tiny, synthetic 10-second composition using the generated project structure, run `check`, render it locally in CI, and validate the MP4 with FFprobe. Only then proceed to a 60–90-second calibration.
