# HyperFrames Render Policy

**Status:** Proposal — not yet implemented or tested  
**Scope:** Open-source HyperFrames CLI for long-form videos only  
**Separate system:** The original HyperFrames/HeyGen connector remains reserved for Shorts.

## 1. Goals

- Render reproducible MP4s using the open-source HyperFrames project.
- Avoid hosted generation, Studio, paid media generation and credit-based services.
- Preserve the existing Ai-workflow planning system, scene IDs, animation IDs and human approval gates.
- Keep the renderer an execution layer, not a second source of truth.

## 2. Runtime requirements to verify

- Node.js 22 or later.
- FFmpeg available on the runner.
- HyperFrames CLI pinned to an exact version.
- The exact supported headless Chrome/headless-shell installation method for that version.
- Linux x64 GitHub Actions runner for the first calibration.

Do not assume Android/Termux is a supported rendering host. Do not claim a successful render until a real smoke test completes.

## 3. Allowed operations

Only use documented local/offline-capable operations after verifying the pinned CLI syntax:

- project initialization with skill installation disabled;
- lint and structural checks;
- doctor and benchmark;
- snapshots and local preview mechanisms only if they do not invoke Studio or hosted services;
- local rendering;
- local browser installation/path checks;
- timeline and composition editing;
- registry/catalog inspection and approved local blocks;
- local audio normalization and other explicitly local processing.

A wrapper must use an explicit allowlist. Unknown commands and flags fail closed.

## 4. Forbidden operations

The renderer wrapper and CI workflow must reject or avoid:

- cloud, Lambda, Cloud Run or other hosted rendering;
- Studio, sign-in, authentication, billing, publish, desktop-app workflows;
- hosted image, video, avatar, voice, music, SFX or asset generation;
- HeyGen-connected media catalogs or credit-linked features;
- upstream skills that prompt for sign-in, invoke telemetry beacons, or install desktop tooling;
- automatic CLI upgrades or unreviewed skill installation;
- GPU/browser-GPU flags in the initial CI environment;
- commands or options whose cost or network behavior has not been verified.

Do not copy upstream skills into this repository unchanged. If agent guidance is needed, author a small local-only instruction set after reviewing the pinned upstream version.

## 5. Telemetry, updates and environment

Set supported opt-out variables in every render job, including:

```sh
HYPERFRAMES_NO_TELEMETRY=1
DO_NOT_TRACK=1
HYPERFRAMES_NO_UPDATE_CHECK=1
```

Before relying on these values, verify the pinned CLI actually honors them. Do not assume an environment variable is effective merely because it is set.

- Do not create or commit `.env` files.
- Do not store API keys, HeyGen tokens or other credentials in the repository.
- Ensure HeyGen/API credentials are absent from the render job environment.
- Do not run usage/event/feedback beacons.
- No workflow should need a HeyGen login.

## 6. Repository privacy and assets

The current Ai-workflow repository is public.

- Treat all committed files, logs and workflow artifacts as public.
- Use only synthetic or explicitly public, rights-cleared sample assets in public CI.
- Never upload unpublished scripts, private footage, personal data, private voice recordings or final unreleased videos as public Actions artifacts.
- Do not commit raw stock footage, music or large media files.
- Keep asset manifests and provenance/licence notes; fetch only from explicitly approved sources.
- A public workflow is not a private delivery channel. Before real production assets are used, establish a private repository or another private storage/delivery method and verify its costs and access controls.

## 7. Render and QA sequence

1. Approved brief and script.
2. Approved storyboard and asset manifest.
3. Build composition from the approved script/storyboard.
4. Run lint/check and generate review snapshots.
5. Produce a short draft render.
6. Human visual and audio review (Gate G).
7. Correct issues and rerun strict validation.
8. Final render only after explicit approval.
9. Verify the MP4 with FFprobe: file exists, non-zero size, expected duration, dimensions, frame rate, codecs and audio stream.
10. Human final QA (Gate H) before the user publishes.

Use strict failure behavior. Prefer `--strict` and `--no-best-effort` if confirmed in the pinned CLI help. Do not silently accept warnings.

For long source footage, evaluate segmented capture and video-frame windowing during calibration. Do not enable flags without confirming their current documented behavior.

## 8. GitHub Actions safety

- Initial workflows must be manually triggered with `workflow_dispatch`.
- No schedule, push-triggered render, auto-publish or release upload.
- Set the minimum permissions required; default to read-only.
- Use a fixed runner label and pinned dependencies.
- Set a bounded timeout and concurrency limit.
- Do not expose secrets to pull-request workflows.
- Public workflow artifacts must contain synthetic test outputs only.
- Do not upload final videos to releases or artifacts until privacy, retention, size and retrieval behavior are explicitly approved.

## 9. Human approvals

The existing production gates remain authoritative. No automated agent may:
- approve its own script or storyboard;
- skip narration or asset review;
- initiate a final render without approval;
- publish or schedule a video.

## 10. Calibration exit criteria

Before building a 6–8 minute production pipeline, complete:

- 10-second synthetic smoke render;
- 60–90-second calibration with synthetic video, a transition and captions;
- FFprobe validation;
- snapshot inspection by a human;
- recorded wall time, peak memory, disk use and output size;
- confirmation that no hosted service, sign-in, credit or telemetry event was used;
- confirmation that failure exits non-zero.

Only measured calibration results may be used for production-time estimates.