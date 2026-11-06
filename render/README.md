# Long-form renderer: open-source HyperFrames

This directory is reserved for the **open-source HyperFrames CLI** used by the long-form video workflow. It is separate from the original HyperFrames/HeyGen connector, which remains reserved for Shorts.

## Current status

- Renderer policy and collaboration rules are documented.
- A manual GitHub Actions workflow now performs a synthetic 10-second MP4 smoke test.
- The workflow has not yet been run; no render is claimed as successful.
- The visual identity and animation style remain deliberately unfinalized.
- Existing scene/animation libraries are preserved as references, not treated as approved visual specifications.
- No unpublished scripts, footage, credentials or final production videos belong in this public repository.

## Intended layout

```text
render/
  README.md
  RENDER_POLICY.md
  SMOKE_TEST.md
  templates/       # generic compositions, style-neutral until approved
  scripts/         # render wrapper and validation helpers, added after smoke test
  tests/           # synthetic test compositions only
```

The per-video brief, script, storyboard and production state remain in the existing workflow structure. The renderer consumes approved inputs; it does not become a second source of truth.

## Current owner

ChatGPT is the active implementation owner while Claude is unavailable. The existing creative engine and libraries will be reused, not recreated. If Claude returns, it can review the renderer or take a clearly unassigned task; it must not build a parallel implementation.

## Public repository warning

This repository is public. Workflow logs and artifacts must be treated as public. The smoke workflow uploads only a synthetic MP4 for three days. Do not put private production material here.
