# HyperFrames Render Policy

**Status:** Implementation in progress; first CI smoke render still pending  
**Scope:** Open-source HyperFrames CLI for long-form videos only  
**Separate system:** The original HyperFrames/HeyGen connector remains reserved for Shorts.

## 1. Goals

- Render MP4s using the open-source HyperFrames CLI on a local or GitHub-hosted runner.
- Avoid hosted rendering, Studio, paid media generation and credit-based services.
- Preserve the existing Ai-workflow planning system, scene IDs, animation IDs and human approval gates.
- Keep the renderer an execution layer, not a second source of truth.
- Keep visual identity and animation style unfinalized until the user approves them.

## 2. Verified starting requirements

- Node.js 22 or later.
- FFmpeg and FFprobe.
- HyperFrames CLI pinned to v0.9.19 for the initial smoke test.
- HyperFrames-managed pinned Chrome installed with `hyperframes browser ensure`.
- Ubuntu 24.04 GitHub Actions runner for the first CI smoke test.

The upstream CLI documentation confirms the init, doctor, browser, lint, check and render commands used by the smoke workflow. The smoke workflow must still be run before claiming the setup works in CI.

Do not assume Android/Termux is a supported rendering host. Do not claim a successful render until an actual MP4 is produced and inspected.

## 3. Allowed operations

- project initialization with skill installation disabled;
- lint, check, doctor and benchmark;
- snapshots and local preview mechanisms only when they do not invoke hosted services;
- local rendering;
- local browser installation/path checks;
- timeline and composition editing;
- registry/catalog inspection and approved local blocks;
- local audio normalization and other explicitly local processing;
- installation of pinned public open-source dependencies needed by the renderer.

A wrapper must use an explicit allowlist. Unknown commands and flags fail closed.

## 4. Forbidden operations

The renderer wrapper and CI workflow must reject or avoid:

- cloud, Lambda, Cloud Run or other hosted rendering;
- Studio, sign-in, authentication, billing, publish and desktop-app workflows;
- hosted image, video, avatar, voice, music, SFX or asset generation;
- HeyGen-connected media catalogs or credit-linked features;
- upstream skills that prompt for sign-in, invoke telemetry beacons or install desktop tooling;
- automatic CLI upgrades or unreviewed skill installation;
- GPU/browser-GPU flags in the initial CI environment;
- commands or options whose cost or network behavior has not been verified.

Do not copy upstream skills into this repository unchanged. If agent guidance is needed, author a small local-only instruction set after reviewing the pinned upstream version.

## 5. Telemetry, updates and environment

Set the supported opt-outs in every render job:

```sh
HYPERFRAMES_NO_TELEMETRY=1
DO_NOT_TRACK=1
HYPERFRAMES_NO_UPDATE_CHECK=1
HYPERFRAMES_SKIP_SKILLS=1
```

The upstream CLI documentation identifies these as supported settings. Telemetry remains disabled; automatic update checks are disabled; skill installation is skipped.

- Do not create or commit `.env` files.
- Do not store API keys, HeyGen tokens or other credentials in the repository.
- Ensure HeyGen/API credentials are absent from the render job environment.
- No workflow should need a HeyGen login.

## 6. Repository privacy and assets

The current Ai-workflow repository is public.

- Treat all committed files, logs and workflow artifacts as public.
- Use only synthetic or explicitly public, rights-cleared sample assets in public CI.
- Never upload unpublished scripts, private footage, personal data, private voice recordings or final unreleased videos as public Actions artifacts.
- Do not commit raw stock footage, music or large media files.
- Keep asset manifests and provenance/licence notes; fetch only from explicitly approved sources.
- A public workflow is not a private delivery channel. Before real production assets are used, establish private storage/delivery and verify its costs and access controls.

## 7. Render and QA sequence

1. Approved brief and script.
2. Approved storyboard and asset manifest.
3. Build composition from approved script/storyboard and the user's approved art direction.
4. Run lint/check and generate review snapshots.
5. Produce a short draft render.
6. Human visual and audio review.
7. Correct issues and rerun strict validation.
8. Final render only after explicit approval.
9. Verify the MP4 with FFprobe: file exists, non-zero size, expected duration, dimensions, frame rate, codecs and audio stream.
10. Human final QA before the user publishes.

The initial smoke workflow uses strict failure behavior. The CLI documentation confirms `--strict` and `--no-best-effort`. Do not silently accept warnings.

For long source footage, evaluate segmented capture and video-frame windowing during calibration. Do not enable flags without confirming their current documented behavior.

## 8. GitHub Actions safety

- Initial workflows are manually triggered with `workflow_dispatch`.
- No schedule, push-triggered render, auto-publish or release upload.
- Set minimum permissions; default to read-only.
- Use a fixed runner label and bounded timeout/concurrency.
- Do not expose secrets to pull-request workflows.
- Public workflow artifacts may contain synthetic test outputs only.
- The smoke workflow uploads a synthetic MP4 with three-day retention.
- Do not upload final videos to public artifacts or releases.

## 9. Human approvals

No automated agent may:
- approve its own script or storyboard;
- finalize an unapproved animation or visual style;
- skip narration or asset review;
- initiate a final production render without approval;
- publish or schedule a video.

## 10. Calibration exit criteria

Before building the 6–8 minute production pipeline, complete:

- successful 10-second synthetic smoke render;
- human inspection of the smoke MP4;
- 60–90-second synthetic calibration with representative motion and captions;
- FFprobe validation;
- snapshot inspection;
- recorded wall time, peak memory, disk use and output size;
- confirmation that no hosted service, sign-in, credit or telemetry event was used;
- confirmation that failures exit non-zero.

Only measured calibration results may be used for production-time estimates.
