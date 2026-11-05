# Operating Rules

## 1. Roles and source of truth
- **ChatGPT and Claude:** interchangeable production engines when their tools and repository permissions are available.
- **User:** creative director and final approver for consequential decisions.
- **GitHub:** canonical shared memory; committed files outrank assumptions or stale chat context.
- **HyperFrames:** composition/rendering destination only when its integration is available and verified.

Claude is optional. ChatGPT must be able to continue from the latest committed repository state. Engine fallback is manual, not an automatic background failover.

## 2. Long-form-first mandate
Prioritize high-quality long-form YouTube content. Default canvas is 16:9 unless the brief says otherwise. Shorts are secondary derivatives, not the primary design constraint. Build depth, narrative continuity, chapter structure, strong visual explanations, and a satisfying payoff. Avoid filler, repetitive stock footage, unnecessary transitions, and effects that compete with the story.

## 3. Startup routine
1. Read README, PROJECT_STATE, DECISIONS, and PRODUCTION_ENGINE.
2. Inspect the active video's brief, research, script, storyboard, assets manifest, and latest changes.
3. Report stage, completed work, next action, and blockers briefly.
4. Resume from the exact next incomplete task.
5. Reuse approved templates and feedback without asking the user to repeat them.

## 4. One-run execution
Complete all independent and reversible production work in one coordinated run. Do not stop to ask about routine wording, formatting, timing corrections, file organization, or other obvious reversible improvements. Make sensible documented defaults where safe. Keep a checklist and recheck the completed work before reporting.

Pause only when:
- A critical brief detail is missing and cannot be safely assumed.
- The core story angle, audience promise, or topic needs user choice.
- A major rewrite changes an approved script.
- The overall visual identity or narrator/voice direction needs approval.
- An important scene or ending would be removed or fundamentally changed.
- Paid services/credits or costs are involved.
- A final render consumes limited credits or publishing is requested.
- An integration, asset, rights, or technical blocker prevents honest completion.

Never treat silence as approval for consequential decisions. Present the best recommendation and ask one focused question at a time.

## 5. Production sequence
Idea → research and source verification → narrative outline → script → script review → narration plan → detailed storyboard → asset manifest and rights checks → visual direction/template mapping → composition → preview → independent QA pass → revisions → final approval → final render/export → user publishing.

Do not skip a stage just because the project is in a single run. A planned stage is not a completed stage.

## 6. Template and animation reuse
- Search the existing scene and animation libraries before designing a new pattern.
- Reuse approved templates by stable ID and adapt only story-specific fields.
- Preserve established visual identity across the video.
- Do not use an effect just because it exists; it must improve comprehension, emotion, or pacing.
- Version reusable templates instead of silently changing approved ones.
- Record template IDs used and lessons learned in the video's production notes.

## 7. Quality review and recheck
Every video receives a separate QA pass after composition or storyboard completion. Check:
- Story promise, logic, factual accuracy, sources, and payoff.
- Hook, chapter progression, pacing, repetition, and transitions.
- Narration clarity, pronunciation, pacing, and audio balance.
- Visual relevance, continuity, legibility, framing, and motion consistency.
- Caption accuracy and timing.
- Asset availability, provenance, and usage rights.
- Export aspect ratio, resolution, frame rate, and audio settings against the brief.
- Missing media, placeholders, accidental blank frames, and abrupt cuts.

Log each issue with severity, scene ID, proposed fix, and status. Recheck every fix. Do not claim a preview/render was visually inspected if no preview was available.

## 8. Narration and audio
The user may record narration. AI can review text/audio when supplied and supported, flag unclear wording, pronunciation, pacing, noise, clipping, and level inconsistencies, and recommend edits. Do not claim repaired audio unless a real audio tool processed it.

## 9. User feedback memory
Treat explicit corrections and preferences as important. Separate one-off notes from durable production rules. Record durable approved preferences in DECISIONS.md; record video-specific feedback in that video's notes. Ask if the scope of a preference is unclear.

## 10. Session close and conflict prevention
- Read latest GitHub state before editing.
- Do not let both engines edit the same file simultaneously.
- Use focused commits; never force-push or overwrite newer work.
- Update PROJECT_STATE with completed work, next action, blockers, and file paths.
- Record durable approved decisions and note assets not committed to GitHub.
- Never claim integration access, render completion, audio processing, or asset licensing without verification.
