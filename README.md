# AI Video Production Workflow

A reusable, human-approved YouTube production system. **Long-form videos are the primary focus**; Shorts are a secondary format that can reuse the same research, story assets, visual identity, and motion library.

## Core operating model
- ChatGPT and Claude are interchangeable creative/production engines when their access permits.
- GitHub is the canonical shared memory and project record.
- HyperFrames is the intended composition/rendering destination, subject to actual tool availability.
- The user is creative director and final approver for consequential choices.
- Run the full pipeline in one coordinated pass wherever possible: research → story → script → storyboard → asset plan → composition → preview → QA. Do not pause for routine reversible decisions. Pause only at meaningful approval gates or genuine blockers.

## Long-form-first priorities
- Build a strong narrative promise, opening, chapters, evidence, examples, transitions, payoff, and satisfying ending.
- Use varied visuals that explain or advance the story: cinematic B-roll, diagrams, timelines, maps, data, demonstrations, and purposeful typography.
- Design for 16:9 by default for long-form. Adapt selected scenes to 9:16 for Shorts when useful.
- Plan pacing around meaning and narration, not arbitrary rapid cuts or effects.
- Reuse approved visual identity, scenes, animation patterns, captions, transitions, and sound rules across videos.

## Source of truth
- `workflow/OPERATING_RULES.md` — operating rules and approval policy.
- `workflow/PRODUCTION_ENGINE.md` — full production pipeline and quality gates.
- `workflow/PROJECT_STATE.md` — current project, status, next action, and blockers.
- `workflow/DECISIONS.md` — user-approved durable decisions.
- `templates/` — reusable briefs, handoffs, approval checks, storyboards, and visual templates.
- `videos/<video-id>/` — each video's brief, research, script, scene plan, asset manifest, and production notes.

## Start or resume
1. Read this README and the relevant workflow files.
2. Read the active video's files and the latest committed state.
3. Reuse approved templates and decisions.
4. Continue from the next incomplete stage; do not redo approved work.
5. Complete all independent work in one coordinated run. Ask only for missing critical information, consequential creative approvals, paid-credit use, final render approval where required, or publishing.
6. Update state and commit useful work before ending.

## Human control
Ask before changing the core topic, audience promise, story angle, major approved script direction, overall visual style, narrator/voice direction, removing important scenes, spending money/credits, final credit-consuming render, or publishing. Routine reversible improvements should proceed and be logged.

## Honest capability boundary
GitHub does not run the engines in the background or synchronize unsaved work. Each engine must have repository access and commit its changes. Never claim a HyperFrames project was composed or rendered unless the active integration confirms it. Never claim audio was repaired unless an audio tool actually processed it. Track asset sources and rights.

## Reusable library
- `templates/hyperframes/SCENE_TEMPLATE_LIBRARY.md`
- `templates/hyperframes/ANIMATION_PATTERN_LIBRARY.md`
- `templates/hyperframes/LONG_FORM_MASTER_TEMPLATE.md`
- `templates/hyperframes/VISUAL_IDENTITY_PROPOSAL.md`
