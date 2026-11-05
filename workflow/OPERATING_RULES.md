# Operating Rules

## 1. Roles
- **Claude:** production engine A. Can research, plan, draft, inspect files, and implement approved changes when its tools/access are available.
- **ChatGPT:** production engine B and full fallback. Must be able to resume using GitHub files and the connected GitHub tools, without relying on Claude's chat history.
- **User:** creative director and final approver for consequential decisions.
- **GitHub:** canonical shared memory and project record.
- **HyperFrames:** composition/rendering destination when its integration is available.

Neither AI is the owner of the project. The committed repository is the source of truth.

## 2. Required startup routine
At the start of every session:
1. Read `README.md`.
2. Read `workflow/PROJECT_STATE.md`.
3. Read `workflow/DECISIONS.md`.
4. Inspect the active video's folder and latest committed changes.
5. Report the current stage, last completed task, next task, and any blocker in a few lines.
6. Continue from the next task; do not ask the user to repeat facts already recorded.

## 3. Automatic fallback
If Claude is rate-limited, unavailable, or the user chooses ChatGPT:
1. ChatGPT reads the repository's latest committed state.
2. ChatGPT checks for uncommitted or missing work described in the handoff.
3. ChatGPT resumes the next incomplete task.
4. ChatGPT preserves approved scripts, assets, naming, style, and decisions.
5. ChatGPT updates the state and commits progress.
6. When Claude becomes available, it must read the latest state before doing anything. It must not overwrite newer work.

Fallback is a manual engine switch, not an automatic background failover. The user can simply say: **"Claude limit reached. Continue from GitHub."**

## 4. Approval policy
### Ask first
Get explicit user approval before:
- Changing the core topic, promise, audience, or story angle.
- Making a major script rewrite after the user approved a version.
- Choosing or changing the overall animation/visual style.
- Choosing a narrator identity/voice direction or materially changing narration.
- Removing important scenes or changing the ending.
- Starting a paid service, using paid credits, or incurring a cost.
- Performing a final render when it consumes limited credits, or publishing/uploading.
- Replacing or deleting user-approved assets.

### Proceed and log
No approval needed for ordinary, reversible improvements such as:
- Fixing spelling, grammar, timing notes, and obvious pronunciation issues.
- Suggesting alternate hooks or captions without replacing approved copy.
- Organizing files, creating manifests, checking consistency, and reporting errors.
- Making a reversible technical correction that preserves the approved creative direction.

If uncertain whether a change is consequential, ask.

## 5. Narration and audio
The user may provide or record narration. AI can review a transcript and suggest corrections, identify unclear wording, flag pacing/pronunciation issues, and recommend audio cleanup. Do not claim audio has been repaired unless an audio tool actually processed it. Preserve the user's intended delivery.

## 6. Session close / handoff
Before ending a session:
- Save all useful work to GitHub.
- Update `workflow/PROJECT_STATE.md` with stage, completed work, next action, blockers, and active file paths.
- Add approved durable decisions to `workflow/DECISIONS.md`.
- Note any uncommitted changes or external assets that are not in GitHub.
- Provide the user a concise summary and the exact next step.

## 7. Conflict prevention
- Pull/read the latest repository state before editing.
- Do not let both engines edit the same file simultaneously.
- Make focused commits with descriptive messages.
- Never replace a newer file with an older local copy.
- If a conflict occurs, stop and reconcile; do not force-push or discard work.

## 8. Production stages
Idea → research → brief → script → user approval → narration → storyboard/scene plan → visual direction approval → asset preparation → HyperFrames composition → preview review → revisions → final render approval → final export → user upload/publishing.

Stages can be adapted per video, but approval gates must be respected.