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


## Narration repository

### Selected candidate: [remsky/Kokoro-FastAPI](https://github.com/remsky/Kokoro-FastAPI)

**Role:** self-hosted narration service for approved ThinkVerse scripts.

- Uses the Kokoro-82M text-to-speech model and exposes an OpenAI-compatible speech API.
- README documents English (US/GB) and other languages, multiple voices, MP3/WAV and other audio formats, and word/chunk timestamps for caption synchronization.
- Can run as a CPU Docker service; GPU variants are available but are not required for the initial feasibility check.
- Server project license: Apache-2.0. The linked Kokoro model is separately identified as Apache-2.0 in the Kokoro-ONNX project documentation; verify the exact model card and voice/model terms at the time of deployment.
- This is a self-hosted option, not a guarantee of zero compute cost: it requires CPU/RAM, model download, storage, and render time. Codespaces resource limits may make long narration slow or impractical.

**Why this candidate:** its HTTP API and timestamps make it easier to connect narration output to the existing scene-based workflow than a standalone TTS script. It also avoids requiring a paid narration API for every test.

**Narration adapter contract**

1. Input only the user-approved script, split into stable scene/paragraph IDs.
2. Preserve wording exactly unless the user approves a script revision.
3. Generate audio per scene or paragraph so a bad take can be regenerated without rerunning the whole narration.
4. Save WAV or MP3 plus a manifest containing scene ID, voice ID, language/accent, duration, sample rate, and timestamps when available.
5. Run audio checks: file exists, duration is nonzero, no clipped/empty output, scene order is correct, and audio can be decoded.
6. Let HyperFrames consume the approved audio assets and timing manifest. No direct HyperFrames integration is claimed until an adapter is implemented and tested.
7. Keep ElevenLabs as an optional provider/fallback using the user's existing account/credits; do not store API keys in GitHub.
8. Voice choice must be auditioned and approved. The target is natural conversational American-English male narration; do not assume a particular Kokoro voice is equivalent to the previously preferred ElevenLabs voice.

**Installation/test boundary**

- Do not install the full service into the root AI-workflow environment.
- First inspect current Docker CPU image requirements, model download size, RAM use, and license/model-card details.
- Test a short approved sample in an isolated Codespaces environment or another machine with sufficient resources.
- Compare pronunciation, pacing, expressiveness, accent, audio quality, and generation time against the existing ElevenLabs voice.
- Do not enable automatic publishing or let narration generation silently alter the approved script.

**Not yet verified:** Kokoro-FastAPI has been inspected at the README, project manifest, and Apache-2.0 license level only. It has not been cloned, installed, run, connected to HyperFrames, or used to produce a ThinkVerse narration sample.
