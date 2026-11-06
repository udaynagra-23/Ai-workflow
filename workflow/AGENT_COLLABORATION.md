# Agent Collaboration Protocol

**Purpose:** ChatGPT and Claude work side by side on one YouTube production system without rebuilding, duplicating or overwriting each other's work.

## Shared operating principles

1. `main` is the single source of truth.
2. The user approves merges into `main`.
3. Work is divided by ownership, not duplicated.
4. Before starting a task, each agent reads this file and the current project state.
5. Inspect existing files and open PRs before creating an implementation.
6. If a task crosses ownership boundaries, the owner proposes the interface and asks the other agent to review; both do not implement the same feature.
7. Handoffs include changed paths, decisions, tests run, tests not run, known risks and the next exact task.
8. Never claim a test passed unless it was actually run and its output inspected.

## Current operating mode

Claude is temporarily unavailable due to its usage limit. ChatGPT is the sole active implementation and production agent until Claude is available again. The work already committed to GitHub is the shared project state; no parallel rebuild is needed.

## ChatGPT — current owner

Owns:
- topic research, factual source checking, video briefs, scripts and story structure;
- storyboard content and scene-by-scene editorial intent;
- narration text and narration QA;
- thumbnail concepts and packaging;
- production-state coordination and human approval gates;
- open-source HyperFrames renderer integration, CLI pinning, CI workflow, synthetic tests and calibration;
- independent QA and integration.

ChatGPT must reuse the existing production engine and template libraries, not recreate them.

## Claude — optional reviewer / future specialist

When available, Claude may:
- review the renderer implementation and report bugs without creating a duplicate version;
- take a clearly assigned, unowned task after a written handoff;
- review research or scripts when explicitly requested.

Claude must not recreate files or features already owned and completed by ChatGPT. Ownership transfers only through an explicit handoff.

## User — final authority

Approves:
- scope and architecture changes;
- scripts, narration, storyboards and visual direction;
- final production renders and publishing;
- PR merges and changes to `main`;
- any paid service or credit-consuming operation.

## Branch and handoff protocol

- ChatGPT uses `chatgpt/<task-name>` branches.
- Claude uses `claude/<task-name>` branches only for tasks explicitly assigned to Claude.
- One owner per file/task at a time.
- Keep PRs small and focused.
- The non-owner reviews and comments; it does not create a parallel implementation.
- If both branches touch the same file, stop and coordinate; do not force-push or overwrite.

## Current HyperFrames assignment

- ChatGPT: active owner of renderer policy, smoke workflow, implementation and calibration.
- Claude: no active renderer implementation assignment while unavailable.
- First milestone: synthetic 10-second MP4 smoke render.
- Second milestone: 60–90-second synthetic calibration only after smoke-test review.
- Production composition integration follows calibration and the user's visual-style approval.
- No final production export or publishing without the user's approval.

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

Repository access is not local execution. Reading source code is not a render test. A generated MP4 is not visually approved until a human reviews it. A successful CI run is not proof that private production assets are safely handled.
