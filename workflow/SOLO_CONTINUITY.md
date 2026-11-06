# Solo Continuity and Renderer Handoff

**Current operating mode:** ChatGPT is the active implementation and production agent. Claude is temporarily unavailable.

## No-duplication rule

- Continue from the existing repository; do not recreate the script engine, thumbnail engine, production engine, scene library or animation library.
- Keep `workflow/PROJECT_STATE.md` as the production status source of truth.
- Keep `main` as the shared source of truth. Changes are proposed through pull requests; the user approves merges.
- If Claude becomes available later, it reviews the existing work or takes a clearly unassigned task. It must not recreate completed work.

## Existing creative system to reuse

- `workflow/PRODUCTION_ENGINE.md`
- `workflow/SCRIPT_ENGINE.md`
- `workflow/THUMBNAIL_ENGINE.md`
- `workflow/OPERATING_RULES.md`
- `workflow/DECISIONS.md`
- `templates/hyperframes/SCENE_TEMPLATE_LIBRARY.md`
- `templates/hyperframes/ANIMATION_PATTERN_LIBRARY.md`
- `templates/hyperframes/LONG_FORM_MASTER_TEMPLATE.md`
- `templates/hyperframes/VISUAL_IDENTITY_PROPOSAL.md`

These files remain reusable references. They are not a final visual specification. Character design, palette, typography, backgrounds and animation style remain subject to the user's approval. The renderer must support multiple visual treatments without forcing a single style.

## Current renderer branch

The `chatgpt/hyperframes-ci-bootstrap` branch contains:
- local-only HyperFrames policy;
- manual-only GitHub Actions synthetic render workflow;
- pinned CLI v0.9.19;
- Node.js 22, FFmpeg and browser setup;
- 10-second blank-scaffold MP4 render and FFprobe validation;
- synthetic-only artifact upload with three-day retention;
- updated ownership and collaboration rules.

The workflow has not yet been executed. No successful render is claimed.

## Remaining technical milestones

1. Merge the reviewed pull requests into `main`.
2. Manually run the synthetic MP4 smoke workflow in GitHub Actions.
3. Inspect the MP4 artifact and representative frames.
4. Run a 60–90-second synthetic calibration with representative movement and captions.
5. Record measured render time, memory, disk use and output size.
6. Build a reusable, style-neutral renderer template that maps to existing SC/AN IDs.
7. Finalize visual identity and animation style with the user, then create style-specific presets.
8. Establish private storage/delivery before using unpublished scripts, personal voice recordings, private footage or final production videos. The current repository is public.

## Honest status labels

Use `documented`, `implemented`, `workflow-passed`, `render-passed`, `visually-reviewed` and `production-ready` as distinct states. Never promote a task without corresponding evidence.

## User interaction

The user should not need to edit source code. For ordinary operation, expected actions are:
- review and merge the pull requests;
- manually start the workflow in GitHub Actions;
- review the workflow result and synthetic MP4;
- approve creative and final-video milestones in ChatGPT.

Do not request a paid service, credential or private asset upload without explaining why and obtaining explicit approval.
