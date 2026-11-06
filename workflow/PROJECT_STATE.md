# Project State

**Project:** ThinkVerse AI video-production workflow  
**Status:** Core workflow and selected engine checkouts are prepared. Final milestone is one 30-second narrated animation sample. No additional engine expansion is planned before that test.  
**Active video:** 30-second technical sample (no public upload)  
**Current coordinator:** ChatGPT; Claude remains optional  
**Primary format:** Long-form YouTube (16:9)  
**Secondary format:** Shorts only after the core workflow is validated  
**Last completed:** Core research/script/thumbnail/approval documentation, animation and narration adapter plans, HyperFrames scene template, and bootstrap script are committed. User reports running `scripts/bootstrap-engines.sh` in Codespaces and seeing the three upstream folders. This is user-reported; the GitHub connector cannot inspect that live Codespaces filesystem.  
**Only next milestone:** Produce and inspect one 30-second sample with approved narration, visible character/object animation, camera movement, scene transitions, captions, and sound design. Verify the actual MP4 and audio, not just command output.  
**No further expansion:** Do not add more repositories, engines, or optional integrations before the sample is reviewed. Do not begin a full-length video until the sample passes user review.  
**Last updated:** 2026-11-06

## Resume instructions
1. Read this file, README.md, workflow/DECISIONS.md, workflow/PRODUCTION_ENGINE.md, workflow/SCRIPT_ENGINE.md, and integrations/REPOSITORY_ADAPTERS.md.
2. Use the already-cloned upstream folders in the user's Codespace; do not clone them again unless a folder is genuinely missing.
3. Keep upstream projects isolated. Do not install every dependency set into the root repository environment.
4. Use only free/local capabilities for this trial. No paid APIs, subscriptions, or credits.
5. Generate one 30-second sample, then inspect the real MP4, narration, captions, motion, and timing.
6. Stop after presenting the sample and any verified limitations. Wait for the user's review; do not continue to another project or full video automatically.

## Engine status
- [x] Research-grounded script and story workflow documented
- [x] Thumbnail workflow and formula documented
- [x] Human approval checkpoints documented
- [x] Animation and narration candidates selected
- [x] Bootstrap script committed; user reports successful source checkouts in Codespaces
- [x] HyperFrames scene template and 12-second smoke workflow committed
- [ ] Inspect upstream setup requirements in the live Codespace
- [ ] Connect approved narration and animation output to the composition workflow
- [ ] Render the 30-second narrated sample
- [ ] Inspect actual MP4 and audio; obtain user's review

## Selected components (no new additions before sample)
| Component | Selected role | Trial policy |
|---|---|---|
| Stickman Video Director | Scene/storyboard and illustrated motion candidate | Use only after reviewing its current setup instructions; confirm real motion in output |
| Kokoro-FastAPI | Local narration candidate | CPU-first feasibility; model download and RAM/storage may be limiting |
| HyperFrames + FFmpeg | Composition and final MP4 rendering | Use the existing scene workflow; verify actual output |
| MoneyPrinterTurbo | Optional comparison only | Do not install its large dependency stack for the primary sample; no paid provider keys |
| ChatGPT | Research, script, orchestration, QA and repo updates | Can edit repository files, but cannot execute the user's Codespaces terminal |

## Environment and execution boundary
- The user has run the bootstrap script in Codespaces and reports seeing `stickman-video-director`, `Kokoro-FastAPI`, and `MoneyPrinterTurbo` under `tools/upstream`.
- This assistant cannot independently inspect the live Codespaces terminal or filesystem through the GitHub connector.
- Closing the Codespaces browser window does not delete the Codespace. Stopping the Codespace pauses its machine; saved files remain. It must be resumed to run commands.
- GitHub repository edits can be made without the Codespaces window. Installing dependencies, starting local services, rendering, and verifying the generated file require an execution environment; the user may need to resume Codespaces and run the final command.
- Do not claim any engine is installed, connected, or rendered until the corresponding command and output are verified.
- Do not assume a GPU is available merely from a memory/disk figure. Use only resources actually assigned to the Codespace.

## Acceptance criteria for the single sample
- Exactly one 30-second draft, not a slideshow.
- Narration is audible, clear, and synchronized with scene changes.
- At least several visibly animated actions (character/object motion), with purposeful camera movement and transitions.
- Captions are readable and timed to narration.
- Audio levels are consistent; no silent, clipped, or corrupt output.
- MP4 metadata and representative frames are checked.
- No paid service, API key, subscription, or automatic publishing.
- User reviews the sample. Stop there until the user decides what happens next.
