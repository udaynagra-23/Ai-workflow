# Integration Setup and Smoke Tests

Last checked: 2026-11-06

This file records what has actually been verified and the remaining manual connection checks. Do not mark a service working merely because its name appears in a settings screen.

## Current verified status

| Component | Status | Evidence / next step |
|---|---|---|
| GitHub repository | Verified | `udaynagra-23/Ai-workflow` is accessible on `main`; repository metadata reports push permission for the connected GitHub identity. |
| ChatGPT GitHub read | Verified | Read `README.md`, workflow engines, project state, decisions, and reusable templates from the repository. |
| ChatGPT GitHub write | Pending smoke test | Create this file, then read it back and confirm the commit. |
| Claude repository read | Previously reported working | User previously confirmed Claude could clone/read the repository. Re-test after any connection change. |
| Claude repository write/commit | Not verified | In Claude, check repository authorization and run the write test below. Do not assume read access includes write access. |
| HyperFrames MCP | Not exposed in this ChatGPT session | No HyperFrames actions are currently available in the active tool list and no HyperFrames plugin appears in plugin discovery. Reconnect/refresh the integration in the app where it was configured, then test project listing before any render. |
| End-to-end render | Not tested | Requires confirmed renderer access, an approved visual identity, an approved video brief, and explicit approval before any credit-consuming render. |

## Claude write test

1. Open the Claude session connected to this repository.
2. Confirm it is operating on `udaynagra-23/Ai-workflow` and the `main` branch.
3. Ask Claude to create a small file named `workflow/CLAUDE_WRITE_TEST.md` containing only the date, branch, and a short confirmation that the repository write test was run. Do not include credentials or private information.
4. Confirm Claude reports a successful commit SHA.
5. Refresh this file from GitHub and verify the file and commit exist.
6. If Claude can read but cannot write, check its GitHub authorization and repository permissions; do not weaken access controls or share tokens.

## HyperFrames connection test

1. Refresh or reconnect the existing HyperFrames integration in the app where it was installed.
2. Confirm the available actions include project listing and, if supported, a non-rendering project inspection action.
3. List projects only; do not create, compose, edit, or render during the connection test.
4. If project listing succeeds, inspect the available composition/render actions and their required inputs before designing an implementation.
5. Do not spend credits or run a render until the user approves the project, visual direction, and credit use.
6. If HyperFrames remains unavailable, record the exact error and keep the production plan renderer-neutral. Do not claim a render was completed.

## Shared engine handoff test

1. ChatGPT reads the latest committed `workflow/PROJECT_STATE.md`, `workflow/DECISIONS.md`, and active video files.
2. ChatGPT creates or updates one clearly scoped task and commits the changes.
3. Claude reads that commit and continues without editing the same files concurrently.
4. Claude commits its output.
5. ChatGPT fetches the new commit, checks the changes, and updates project state.
6. Repeat in the opposite direction only after the first handoff succeeds.

Claude is optional. If it is unavailable or at its usage limit, ChatGPT continues from the latest committed state. This fallback is manual, not an automatic background failover.

## Production safety and approval gates

- No paid services, credits, final render, or publishing without explicit user approval.
- No publishing automation; the user performs publishing.
- Keep scripts, source notes, asset provenance, approvals, and project state in GitHub.
- Do not claim narration repair, visual inspection, project composition, or rendering unless the relevant tool actually performed and verified it.
- Ask for approval at the documented major creative checkpoints; do not interrupt for routine reversible edits.
