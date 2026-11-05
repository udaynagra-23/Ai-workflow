# AI Video Production Workflow

A human-approved production system using Claude and ChatGPT as interchangeable creative/production engines, GitHub as the shared source of truth, and HyperFrames for video composition/rendering.

## Core guarantee
Claude is optional, not a single point of failure. If Claude reaches a usage limit or is unavailable, ChatGPT can continue from the latest committed project state. The reverse is also possible when Claude has repository access.

## Source of truth
- `workflow/OPERATING_RULES.md` — how both engines must work.
- `workflow/PROJECT_STATE.md` — current project, status, next action, and blockers.
- `workflow/DECISIONS.md` — approved creative and technical decisions.
- `templates/` — reusable briefs, handoffs, approval checks, and production templates.
- `videos/<video-id>/` — one folder per video, containing its brief, script, assets manifest, and production notes.

## Start or resume a video
1. Read this README and all relevant files in `workflow/`.
2. Read the current video's folder, if one exists.
3. Check `workflow/PROJECT_STATE.md` and `workflow/DECISIONS.md`.
4. Continue only from the recorded next action. Do not silently redo approved work.
5. Before finishing a work session, update the state and commit all useful changes.

## Engine fallback
When switching engines, use `templates/HANDOFF.md`. The receiving engine must inspect GitHub before asking the user to repeat information.

## Human control
Ask the user before high-impact or hard-to-reverse choices (story angle, final script direction, visual style, narrator/voice choice, major edits, final render, or publishing). Routine reversible improvements can be made without interrupting, but must be logged.

## Important limitation
GitHub stores the shared files; it does not automatically make Claude and ChatGPT run in the background or synchronize unsaved local work. Each engine must have repository access and must commit its changes. HyperFrames actions are available only when its integration is connected and usable in that session.

## Reusable production templates
Create and maintain reusable visual, motion, caption, sound, and scene templates in `templates/hyperframes/` as the workflow develops.