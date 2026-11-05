# Reusable YouTube Production Engine

## Purpose
Run every video through one repeatable, quality-controlled pipeline. The engine supports Shorts and long-form videos, carries forward the user's advice, and reuses approved templates and animation patterns.

## Non-negotiable principles
1. The user is the creative director and final approver for consequential decisions.
2. Preserve the user's approved direction. Never silently replace it.
3. Claude is optional. ChatGPT must be able to continue from the latest committed repository state.
4. Reuse approved assets, templates, motion patterns, caption styles, and sound rules where they fit. Adapt content; do not blindly repeat scenes.
5. Prioritize story clarity, factual accuracy, pacing, visual purpose, clean narration, and polished finishing over unnecessary effects.
6. Never claim a render, audio repair, asset download, or integration test succeeded unless the relevant tool confirms it.
7. Do not spend paid credits, incur costs, or publish without explicit approval.

## Startup protocol
- Read README.md, workflow/PROJECT_STATE.md, workflow/DECISIONS.md, and this file.
- Inspect the current video's brief, script, storyboard, asset manifest, and latest handoff.
- Identify reusable templates that fit the format and story.
- Report current stage, completed work, next action, and blockers briefly.
- Never ask the user to repeat information already stored.

## Production modes
### Shorts
- One clear idea and one audience promise.
- Hook immediately; remove unnecessary introductions.
- Build a compact progression: hook → context → escalation/discovery → payoff → optional concise CTA.
- Use fast but readable visual changes. Avoid random motion that competes with narration.
- Design for vertical 9:16 unless the brief specifies otherwise.

### Long-form
- Start with a strong opening promise and a clear reason to keep watching.
- Build a structured narrative with chapters, reveals, examples, and transitions.
- Alternate narration, relevant footage, diagrams, maps, demonstrations, and visual pauses.
- Use recurring visual motifs to create continuity, not repetitive filler.
- Design for 16:9 unless the brief specifies otherwise.
- Plan retention intentionally: open loops must be resolved; chapter endings should create a natural reason to continue.
- Fact-check important claims and distinguish evidence from interpretation.

## Script engine
Use `workflow/SCRIPT_ENGINE.md` as the required long-form scripting playbook. It defines evidence-first research, packaging alignment, story-structure selection, hook and chapter design, open-loop tracking, spoken-language drafting, visual scripting, and post-publish analytics feedback. Do not apply every formula to every topic; select only structures that naturally fit the material.

## Quality gates
### Gate A — Brief
Confirm topic, audience, viewer promise, format, target duration, tone, and constraints. Ask only for missing decisions that materially affect the result.

### Gate B — Research and story
Check important facts and sources. Build a coherent narrative. Flag uncertainty and avoid unsupported claims.

### Gate C — Script
Write narration in natural spoken language. Include visual intent alongside each section. Review hook, clarity, pacing, repetition, transitions, and ending.

### Gate D — User approval
Ask before changing the core angle, audience promise, major story structure, or substantially rewriting an approved script.

### Gate E — Visual direction
Select from existing approved templates first. If a new overall visual style is needed, present a concise proposal and get approval before committing to it.

### Gate F — Storyboard and assets
Create a scene-by-scene plan with narration, visual, on-screen text, motion, duration, sound, and asset requirements. Track asset source, rights/licensing status, and status in the manifest.

### Gate G — Composition and preview
Implement only with tools actually available in the current session. Inspect preview for timing, legibility, continuity, visual hierarchy, audio balance, and export framing. Record issues and fixes.

### Gate H — Final approval
Show the final review checklist and obtain approval before a credit-consuming final render or publishing. Never publish automatically.

## Reuse engine
For every new video:
1. Search the template library for matching scene, motion, caption, and sound patterns.
2. Reuse approved patterns by reference and record their IDs in the storyboard.
3. Change only story-specific text, media, duration, and layout parameters.
4. Keep a template unchanged when it is broadly reusable. If an improvement is generally useful, propose a versioned update rather than silently changing an approved template.
5. Record which templates were used and whether they worked well.
6. Add a new reusable template only when a scene solves a recurring need or the user approves a new style.

## User advice and feedback loop
- Treat explicit user preferences and corrections as production requirements.
- Record durable, reusable advice in workflow/DECISIONS.md.
- Record video-specific notes in that video's production notes.
- After review, separate one-off fixes from general lessons.
- Promote a lesson to a reusable rule only when it is clearly durable; ask if its meaning or scope is uncertain.
- Never reinterpret a single piece of feedback as permission to change the whole channel style.

## Standard scene specification
Every storyboard scene should include:
- Scene ID and purpose
- Narration or dialogue
- Visual description and asset references
- On-screen text
- Template ID and animation pattern ID
- Duration and transition
- Sound/music cue and mix note
- Status: planned, approved, built, reviewed, or revised

## Definition of done
A video is ready for user final approval only when:
- The story delivers its promise.
- Claims have been checked and uncertainties flagged.
- Narration is clear and natural.
- Visuals support the narration and are consistent.
- Motion is purposeful and readable.
- Captions and text are legible and correctly timed.
- Audio has been reviewed for levels, clarity, and abrupt changes.
- No missing, placeholder, or unlicensed asset is concealed.
- Preview/export settings match the brief.
- The user has approved the final version.

## Session close
Update workflow/PROJECT_STATE.md, record durable approved decisions, list files changed, identify next action and blockers, and commit useful work. Never claim a production stage is complete if it was only planned.
