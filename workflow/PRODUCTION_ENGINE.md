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
Use `workflow/SCRIPT_ENGINE.md` as the required long-form scripting playbook. It defines evidence-first research, story-structure selection, hook and chapter design, open-loop tracking, spoken-language drafting, visual scripting, and post-publish analytics feedback. Use `workflow/THUMBNAIL_ENGINE.md` for the title-thumbnail package, concept selection, asset checks, human review, and post-publish learning. Do not apply every formula to every topic; select only structures that naturally fit the material.

## Quality gates and human verification
Every major stage produces a reviewable artifact and receives a human verification checkpoint before it is treated as accepted. The user can review grouped deliverables in one checkpoint; do not interrupt for every small edit. Record `pending`, `approved`, `changes requested`, or `not applicable` for each checkpoint. Never treat silence as approval.

### Gate A — Brief
Confirm topic, audience, viewer promise, format, target duration, tone, and constraints. Ask only for missing decisions that materially affect the result. **Human verification:** confirm the topic, intended viewer, and promise before research is locked.

### Gate B — Research and story
Check important facts and sources. Build a coherent narrative. Flag uncertainty and avoid unsupported claims. **Human verification:** show the outline, key evidence, uncertainties, and story angle; obtain approval before committing to a materially consequential framing.

### Gate C — Script
Write narration in natural spoken language. Include visual intent alongside each section. Review hook, clarity, pacing, repetition, transitions, and ending. **Human verification:** present the complete script and major visual intentions for review. Do not proceed with an unapproved major rewrite or a materially changed story promise.

### Gate D — Packaging and thumbnail
Use `workflow/THUMBNAIL_ENGINE.md`. Develop distinct title-thumbnail concepts from the verified story, recommend one, and show the actual rendered image for inspection. **Human verification:** approve the concept and title pairing before final image production, then approve the actual final image before upload.

### Gate E — Visual direction
Select from existing approved templates first. If a new overall visual style is needed, present a concise proposal and get approval before committing to it. **Human verification:** confirm any new overall visual identity or major change.

### Gate F — Storyboard and assets
Create a scene-by-scene plan with narration, visual, on-screen text, motion, duration, sound, and asset requirements. Track asset source, rights/licensing status, and status in the manifest. **Human verification:** review the full storyboard and any rights-sensitive or likeness-sensitive assets before they are committed to the edit.

### Gate G — Composition and preview
Implement only with tools actually available in the current session. Inspect preview for timing, legibility, continuity, visual hierarchy, audio balance, and export framing. Record issues and fixes. **Human verification:** show a representative preview or complete reviewable cut; verify major creative execution before final QA.

### Gate H — Independent QA and final approval
Run independent QA, fix issues, and recheck every fix. Show the final review checklist and obtain approval before a credit-consuming final render or publishing. **Human verification:** user checks the final cut, title, thumbnail, and export intent. Never publish automatically.

### Gate I — Publish and learn
Publishing is a separate user action. After publication, review available analytics and recommend changes; do not silently alter approved reusable rules. **Human verification:** review proposed lessons before promoting them into permanent channel standards.

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
