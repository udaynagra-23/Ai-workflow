# External Repository Adapters

**Status: integration design recorded; neither external repository has been cloned, installed, executed, or merged into this workspace yet.**

This file defines how the two selected open-source projects fit into the existing ThinkVerse workflow without replacing its research, script approvals, HyperFrames renderer, or QA gates.

## Selected repositories

| Role | Repository | License | Intended use |
|---|---|---|---|
| Animation + story-to-video | [kaomei/stickman-video-director](https://github.com/kaomei/stickman-video-director) | MIT | Director Mode for shot planning; Autopilot Mode as a candidate illustrated-scene production engine. B2 Colorful Hand-Drawn is the selected trial style, not yet the permanent channel identity. |
| AI short-video / media generation | [harry0703/MoneyPrinterTurbo](https://github.com/harry0703/MoneyPrinterTurbo) | MIT | Optional generator for selected short-form experiments, generated media, and comparison tests. It must not become the default long-form renderer or bypass the approved script. |

Both upstream repositories are separate projects. Keep their source checkouts outside the core workflow repository (for example, as sibling folders in the Codespaces workspace). Do not copy their full source trees into this repository or merge their dependency files into the root environment.

## Existing ThinkVerse workflow remains the authority

1. Research and factual checks stay in `workflow/SCRIPT_ENGINE.md`.
2. The approved script and narration remain the source of truth. External tools may propose changes, but cannot silently rewrite or replace approved content.
3. User approval checkpoints in `workflow/PRODUCTION_ENGINE.md` and `workflow/OPERATING_RULES.md` remain mandatory.
4. Stickman Video Director can produce a storyboard/scene plan or an illustrated-video candidate. Preserve scene IDs, narration timing, and asset provenance when bringing outputs back.
5. MoneyPrinterTurbo is optional and experimental. Use only selected scenes or a clearly labelled comparison export. Reject generic stock-footage output when it does not serve the story.
6. HyperFrames remains the planned final composition/rendering destination where the actual integration is available and verified. Do not claim that either upstream repository is connected to HyperFrames until an adapter is implemented and tested.
7. Independent QA, preview inspection, user approval, and final export checks remain in force.

## Repository-specific checks

### Stickman Video Director

- Upstream README documents Director Mode and Autopilot Mode. Autopilot targets illustrated scenes with voiceover, captions, sound effects, and subtle motion; it can target long-form.
- The upstream README recommends a coding-agent environment with repository/file and terminal access for Autopilot. This is a material constraint for the current Android-first Codespaces workflow.
- B2 Colorful Hand-Drawn is an available style in the upstream gallery. Use it only for the agreed trial preview; do not replace the approved ThinkVerse identity without a separate approval.
- Upstream repository size reported by GitHub: approximately 188 MB. Keep it as a separate checkout rather than vendoring it.
- MIT license was present in the inspected upstream repository. Preserve its license and notices if any code is later copied or modified.
- Before use: inspect the current Skill/installation instructions, setup scripts, required tools, API requirements, generated-file locations, and any external asset/model terms. Do not run installation scripts until reviewed.

### MoneyPrinterTurbo

- Upstream README describes a topic/script-to-short-video pipeline with script generation, footage matching, subtitles, music, voiceover, and video assembly.
- It supports multiple LLM/TTS/media providers, including Edge TTS, and free stock-footage sources; AI model APIs and some video-generation providers may require paid keys or credits. The repository itself being MIT-licensed does not make third-party generation free.
- Its default stock-footage-oriented output is not automatically suitable for ThinkVerse long-form. Use it only where the visual result is relevant and passes review.
- Upstream project uses Python 3.11+ and a substantial dependency set including MoviePy, Streamlit, FastAPI, Whisper, FFmpeg-related tooling, and provider SDKs.
- Upstream repository size reported by GitHub: approximately 541 MB. Do not install it into the root Codespaces environment or mix its dependencies with HyperFrames.
- MIT license was present in the inspected upstream repository. Preserve its license and notices if any code is later copied or modified.
- Before use: inspect configuration examples, provider defaults, upload/publishing behavior, credential storage, and dependency/install scripts. Keep API keys out of GitHub. Disable any automatic publishing path; the user publishes manually.

## Safe installation and test sequence

1. Create a separate workspace directory for each upstream checkout. Keep `Ai-workflow` clean and canonical.
2. Inspect the upstream setup instructions, install scripts, dependency manifests, licenses, and credential handling before execution.
3. Install only one project at a time in an isolated environment. Do not combine Python dependencies with the HyperFrames Node.js toolchain.
4. Run a tiny local setup check first; do not spend paid API credits.
5. Produce a short draft/preview using the B2 style in Stickman Video Director. Check the actual output, not just a successful command.
6. Separately test MoneyPrinterTurbo with a user-supplied approved script and a short sample. Do not allow it to replace the script or publish.
7. Compare output quality, time, resource use, and any paid-provider requirement. Record results in this file and `workflow/PROJECT_STATE.md`.
8. Only after the user approves the preview should the chosen engine be wired into the repeatable production pipeline.

## Not yet verified

- No source repository has been cloned into Codespaces by this change.
- No install command, setup script, generation API, or rendering command has been run.
- No generated video has been produced by either upstream project in this session.
- No direct adapter between either project and HyperFrames exists yet.
- Free-tier availability, API quotas, and current provider prices have not been verified and must not be assumed.
