# Long-form renderer: open-source HyperFrames

This directory is reserved for the **open-source HyperFrames CLI** used by the long-form video workflow.

It is separate from the original HyperFrames/HeyGen connector, which remains reserved for the Shorts workflow.

## Current status

- Architecture and local-only policy are proposals on the `chatgpt/hyperframes-foundation` branch.
- No renderer dependencies have been installed.
- No video has been rendered or visually validated.
- No GitHub Actions workflow has been enabled.
- No unpublished scripts, footage, credentials, or generated final videos belong in this public repository.

## Intended layout

```text
render/
  README.md
  RENDER_POLICY.md
  package.json             # add only after version/runtime verification
  package-lock.json        # generated and committed with the pinned toolchain
  scripts/                 # allowlisted wrapper and validation helpers
  templates/               # HyperFrames compositions mapped to existing SC/AN IDs
  tests/
    smoke/                 # synthetic, rights-cleared test assets only
```

The per-video brief, script, storyboard, and production state remain in the existing workflow structure. The renderer should consume approved inputs rather than become a second source of truth.

## Next implementation owner

Claude owns the renderer implementation (dependency pinning, wrapper, CI workflow, smoke project and calibration). ChatGPT owns editorial production inputs, architecture coordination and independent review. See [Agent collaboration](../workflow/AGENT_COLLABORATION.md).

## Important

This is a public repository. GitHub Actions artifacts and files committed here must be treated as public. Do not put private or unreleased production material here.