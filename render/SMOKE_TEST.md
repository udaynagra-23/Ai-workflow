# HyperFrames synthetic MP4 smoke test

Workflow: `.github/workflows/hyperframes-smoke.yml`

## Run it

1. Open the repository on GitHub.
2. Select **Actions**.
3. Select **HyperFrames synthetic MP4 smoke test**.
4. Select **Run workflow** on the branch containing this workflow.

The job uses a public Ubuntu 24.04 runner, Node.js 22, FFmpeg/FFprobe and the pinned open-source HyperFrames CLI v0.9.19. It initializes the upstream blank 1920×1080, 30 fps, 10-second scaffold, installs the pinned local browser, runs lint/check, renders a synthetic MP4 and validates its metadata.

## What a green run proves

- The pinned CLI installs on the GitHub runner.
- The generated blank project passes lint and check.
- Local Chrome/browser setup works.
- The renderer produces a non-empty MP4.
- FFprobe confirms approximately 10 seconds, 1920×1080 and 30 fps.

The blank scaffold loads the upstream pinned GSAP browser script from jsDelivr. This is a public library dependency, not hosted rendering or paid media generation. The workflow does not sign in to HeyGen or invoke credit-consuming services.

## What it does not prove

It does not approve a visual style, validate the user's final character design, complex animation patterns, voice/audio, captions, long-form performance, or private asset delivery. It is a technical smoke test only.

## Artifact and privacy

The repository is public. The workflow uploads only the synthetic smoke-test MP4 as a GitHub Actions artifact for three days. Treat workflow logs and artifacts as public. Never add unpublished scripts, private footage, personal data, voice recordings, credentials or final videos to this public repository.

## Next milestone

After a successful run, inspect the MP4 and representative frames. Then build a separate 60–90-second synthetic calibration with representative motion and captions. Record measured render time, peak memory, disk usage and output size before deciding the production architecture.
