# ThinkVerse AI Video Production Workflow

A reusable, human-approved YouTube production system. Long-form is the intended primary format; Shorts are secondary.

## Current milestone
The core workflow and selected engine plans are in place. The user reports that the bootstrap script has cloned the selected upstream projects into their Codespaces workspace. **The only planned next milestone is one 30-second narrated animation sample.** Do not expand the tool stack or start a full video before the sample is reviewed.

## Production components
- **ChatGPT:** research, script, storyboard, production coordination, repository updates, and QA guidance.
- **Stickman Video Director:** candidate scene-planning and illustrated-animation engine.
- **Kokoro-FastAPI:** candidate self-hosted narration engine; resource feasibility must be verified.
- **HyperFrames + FFmpeg:** composition and MP4 rendering.
- **MoneyPrinterTurbo:** optional comparison only; not part of the default install path.
- **Claude:** optional collaborator, never a required dependency.

## Operating rules
- Preserve the user's approved creative direction and review consequential choices.
- Use only free/local capabilities for the initial sample. No paid APIs, subscriptions, or credits.
- Keep upstream repositories and dependencies isolated from the core workflow.
- Do not publish automatically.
- Do not claim installation, integration, rendering, or QA until verified from actual execution and output.
- Avoid slideshow-style output: the sample must show meaningful character/object motion, camera movement, transitions, and narration synchronization.
- Stop after the 30-second sample is presented for user review. No additional engine expansion is planned before then.

## Important execution boundary
GitHub repository tools can inspect and edit committed files, but they cannot run commands inside the user's live Codespace. The user must resume the Codespace and run the final setup/render command when execution is needed. Closing its browser window does not delete it; stopping it pauses the machine while preserving saved files.

## Source of truth
- `workflow/PROJECT_STATE.md` — current status and single next milestone.
- `workflow/PRODUCTION_ENGINE.md` — production and approval gates.
- `workflow/SCRIPT_ENGINE.md` — research-grounded scripting.
- `workflow/THUMBNAIL_ENGINE.md` — title/thumbnail workflow.
- `integrations/REPOSITORY_ADAPTERS.md` — selected upstream engine constraints.
- `templates/` — reusable production templates.

## Resume
Read the project state and relevant workflow files, continue from the single 30-second sample milestone, and do not redo completed setup or clone the same repositories again unless verification shows they are missing.
