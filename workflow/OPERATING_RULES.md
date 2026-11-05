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

Human verification is required at every major handoff: brief, research/story outline, script, title-thumbnail concepts, final thumbnail image, visual direction, storyboard/assets, preview, independent QA/final cut, and post-publish lessons. Verification can be batched into concise review packages; it does not mean asking permission for every minor edit. Record the review state and requested changes. Do not advance past a consequential checkpoint until the user approves it. Silence is not approval.

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
Idea/brief [human verify] → research and story outline [human verify] → script [human verify] → title-thumbnail concepts [human verify] → final thumbnail [human verify] → narration plan → visual direction [human verify if new/changed] → storyboard and asset/rights review [human verify] → composition → preview [human verify] → independent QA and final cut [human verify] → approved final render/export [approval if credits are consumed] → user publishing [explicit approval].

Do not skip a stage just because the project is in a single run. A planned stage is not a completed stage.

## 6. Human verification protocol
- At each major stage, show the user the actual artifact or a clear review summary—not merely a claim that it is complete.
- Ask for one focused approval or correction decision per checkpoint. Batch related items when practical.
- Routine reversible improvements can proceed without interruption; log them and recheck the result.
- Re-open approval if a later change materially alters a previously approved promise, story, visual identity, thumbnail, or final cut.
- Mark unavailable previews, uninspected images, missing rights evidence, and untested integrations as unverified. Never imply human review happened when it did not.
- Keep approval status with the video's project files so ChatGPT and Claude can resume consistently.

## 7. Template and animation reuse
- Search the existing scene and animation libraries before designing a new pattern.
- Reuse approved templates by stable ID and adapt only story-specific fields.
- Preserve established visual identity across the video.
- Do not use an effect just because it exists; it must improve comprehension, emotion, or pacing.
- Version reusable templates instead of silently changing approved ones.
- Record template IDs used and lessons learned in the video's production notes.

## 8. Quality review and recheck
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

## 9. Narration and audio
The user may record narration. AI can review text/audio when supplied and supported, flag unclear wording, pronunciation, pacing, noise, clipping, and level inconsistencies, and recommend edits. Do not claim repaired audio unless a real audio tool processed it.

## 10. User feedback memory
Treat explicit corrections and preferences as important. Separate one-off notes from durable production rules. Record durable approved preferences in DECISIONS.md; record video-specific feedback in that video's notes. Ask if the scope of a preference is unclear.

## 11. Session close and conflict prevention
- Read latest GitHub state before editing.
- Do not let both engines edit the same file simultaneously.
- Use focused commits; never force-push or overwrite newer work.
- Update PROJECT_STATE with completed work, next action, blockers, and file paths.
- Record durable approved decisions and note assets not committed to GitHub.
- Never claim integration access, render completion, audio processing, or asset licensing without verification.
