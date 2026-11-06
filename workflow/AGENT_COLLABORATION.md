# Agent Collaboration Protocol

**Purpose:** ChatGPT and Claude work side by side on one YouTube production system without rebuilding, duplicating or overwriting each other's work.

## Shared operating principles

1. `main` is the single source of truth.
2. Neither agent merges into `main`; the user approves merges.
3. Work is divided by ownership, not duplicated.
4. Before starting a task, each agent reads this file and the current project state.
5. An agent must inspect existing files and open PRs before creating a new implementation.
6. If a task crosses ownership boundaries, the owner proposes the interface and asks the other agent to review; both do not implement the same feature.
7. Handoffs include changed paths, decisions, tests run, tests not run, known risks and the next exact task.
8. Never claim a test passed unless it was actually run and its output inspected.

## Work split

### ChatGPT — editorial and production coordinator

Owns:
- topic research and factual source checking;
- video briefs, scripts and story structure;
- storyboard content and scene-by-scene editorial intent;
- narration text and narration QA criteria;
- thumbnail concepts and packaging;
- human approval gates and production-state coordination;
- independent review of Claude's renderer PRs against the agreed policy;
- integration decisions and conflict resolution proposals.

Does not independently rebuild the renderer, CLI wrapper, dependency setup or GitHub Actions implementation while Claude owns those tasks.

### Claude — renderer engineering owner

Owns:
- open-source HyperFrames technical integration;
- pinned CLI/dependency setup;
- render wrapper and command allowlist;
- local-only environment enforcement;
- GitHub Actions workflow implementation;
- synthetic smoke-test composition;
- calibration tooling and technical render measurements;
- renderer setup and troubleshooting documentation.

Does not rewrite scripts, editorial templates, thumbnail strategy or the existing production engine unless explicitly assigned.

### User — final authority

Approves:
- scope changes and architecture changes;
- scripts, narration, storyboards and visual direction;
- final renders and publishing;
- PR merges and changes to `main`;
- any paid service or credit-consuming operation.

## Branch and handoff protocol

- Claude uses `claude/<task-name>` branches.
- ChatGPT uses `chatgpt/<task-name>` branches.
- One owner per file/task at a time.
- Keep PRs small and focused.
- The non-owner may review and comment but should not create a parallel implementation.
- Before taking over a task, explicitly hand off ownership and summarize the current state.
- If both branches touch the same file, stop and coordinate; do not force-push or overwrite.

## Current HyperFrames assignment

- ChatGPT: architecture/policy coordination, editorial pipeline and independent technical review.
- Claude: implement the renderer foundation in `render/` on a Claude-owned branch, following `render/RENDER_POLICY.md`.
- Both: no parallel renderer implementation.
- First engineering milestone: synthetic 10-second smoke render only.
- Second milestone: 60–90-second calibration render only after smoke-test review.
- No production video or final export until the user approves calibration results.

## Required task handoff format

Every handoff must state:
- task and owner;
- branch and PR URL (if any);
- files changed;
- design decisions;
- commands actually run and their results;
- checks not run and why;
- known risks or blockers;
- exact next action and proposed owner.

## Status truthfulness

Repository access is not the same as local execution. Reading source code is not a render test. A generated MP4 is not visually approved until a human reviews it. A successful CI run is not proof that private production assets are safely handled.
