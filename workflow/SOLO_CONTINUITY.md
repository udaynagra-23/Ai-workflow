# Solo Continuity and Renderer Handoff

**Current operating mode:** ChatGPT is the active implementation and production agent. Claude is optional and currently unavailable due to its usage limit.

## No-duplication rule
- Continue from the existing repository state; do not recreate the script engine, thumbnail engine, production engine, scene library or animation library.
- Keep the existing workflow/PROJECT_STATE.md as the production status source of truth.
- Keep main as the shared source of truth. All changes are proposed through pull requests; the user decides when to merge.
- If Claude becomes available later, it should review or take a clearly unassigned task. It must not recreate completed work.

## Existing creative system to reuse
- workflow/PRODUCTION_ENGINE.md
- workflow/SCRIPT_ENGINE.md
- workflow/THUMBNAIL_ENGINE.md
- workflow/OPERATING_RULES.md
- workflow/DECISIONS.md
- templates/hyperframes/SCENE_TEMPLATE_LIBRARY.md
- templates/hyperframes/ANIMATION_PATTERN_LIBRARY.md
- templates/hyperframes/LONG_FORM_MASTER_TEMPLATE.md
- templates/hyperframes/VISUAL_IDENTITY_PROPOSAL.md

These files remain authoritative for editorial workflow, visual conventions and reusable scene/motion IDs. The renderer is an implementation layer, not a replacement.

## Current renderer branch
The chatgpt/hyperframes-ci-bootstrap branch adds:
- manual-only GitHub Actions setup check;
- pinned HyperFrames CLI v0.9.19;
- Node.js 22 and FFmpeg setup;
- isolated synthetic project initialization;
- local browser setup diagnostics;
- documentation explaining what the setup check does and does not prove.

## Remaining technical milestones
1. Run the setup workflow and inspect its actual logs.
2. Build a minimal synthetic 10-second composition based on the actual generated scaffold and verified CLI contract.
3. Run the composition checks and render an MP4 in CI.
4. Validate the MP4 with FFprobe and inspect representative frames.
5. Run a 60–90-second synthetic calibration and record measured duration, memory, disk use and output size.
6. Only after those pass, map the existing scene/animation IDs into a reusable production composition.
7. Establish private storage/delivery before using unpublished scripts, personal voice recordings, private footage or final production videos. The current repository is public.

## Honest status labels
Use documented, implemented, workflow-passed, render-passed, visually-reviewed, and production-ready as distinct states. Never promote a task to a later state without the corresponding evidence.

## User interaction
The user should not need to edit source code. For ordinary operation, the expected user actions are:
- review and merge the pull request;
- manually start the setup workflow in GitHub Actions;
- review the workflow result;
- approve creative and final-video milestones in ChatGPT.

Do not request a paid service, credential or private asset upload without explaining why and obtaining explicit approval.