# Project State

**Project:** Long-form-first YouTube production engine  
**Status:** Long-form production documentation is in place; a first custom 12-second ThinkVerse HyperFrames scene and an updated scene-render workflow are committed. The updated workflow has not yet been executed.  
**Active video:** None  
**Current engine:** ChatGPT  
**Primary format:** Long-form YouTube (16:9 default)  
**Secondary format:** Shorts adapted from long-form research and assets  
**Last completed:** Added workflow/THUMBNAIL_ENGINE.md, selected the Focus + Contrast + Proof + Curiosity formula, and added stage-by-stage human verification across the production workflow.  
**Next action:** Run `.github/workflows/hyperframes-smoke.yml` manually and inspect the 12-second ThinkVerse scene artifact before extending the composition.  
**Blockers:** Updated scene-render workflow execution and visual output are not yet verified; HyperFrames MCP project access and Claude repository write access remain unverified.  
**Last updated:** 2026-11-06

## Resume instructions
1. Read README, OPERATING_RULES, DECISIONS, PRODUCTION_ENGINE, SCRIPT_ENGINE, and THUMBNAIL_ENGINE.
2. Confirm the latest commit and active video files.
3. Keep long-form as the primary format and reuse approved templates.
4. Use topic-appropriate story structures; do not force formulas or fixed timing rules.
5. Ask only for critical missing information or consequential approvals.
6. Do not claim render or repository access until tested.

## Engine completion status
- [x] One-run production sequence documented
- [x] Long-form-first production priorities documented
- [x] Shorts derivative workflow documented
- [x] Scene and animation template libraries created
- [x] Independent QA and recheck process documented
- [x] User feedback memory rules documented
- [x] Research-informed long-form script engine documented
- [x] Story structure selection and open-loop tracking documented
- [x] Post-publish retention analytics feedback loop documented
- [x] Long-form thumbnail formula and thumbnail engine documented
- [x] Human verification checkpoints added at every major production stage
- [ ] Master visual identity approved
- [ ] Updated ThinkVerse scene workflow executed and MP4 visually inspected
- [ ] Claude repository write access tested
- [ ] First long-form video produced and reviewed end-to-end

## Active video tracker
| Video ID | Topic | Stage | Approved script | Assets | Next action |
|---|---|---|---|---|---|
| — | — | — | — | — | Approve visual identity and create first long-form brief |

## Handoff log
| Date | From | To | Reason | Resume point |
|---|---|---|---|---|
| 2026-11-05 | Setup | ChatGPT | Initial setup | Engine configured; start first long-form project |
| 2026-11-05 | ChatGPT | ChatGPT | Added thumbnail engine and human review gates | Approve visual identity; start first long-form brief |

## Integration verification

- [x] GitHub repository found and read access verified.
- [x] GitHub write permission verified by committing and reading back `workflow/INTEGRATION_SETUP.md`.
- [x] Integration smoke-test instructions documented in `workflow/INTEGRATION_SETUP.md`.
- [ ] Claude write/commit test completed.
- [ ] HyperFrames project-listing connection test completed.
- [ ] End-to-end preview and render test completed after creative approvals.

**Immediate next step:** verify Claude's write/commit access and reconnect HyperFrames for a read-only project-listing test. Then approve the master visual identity and begin the first long-form brief.

## 2026-11-06 scene troubleshooting update
- Confirmed the earlier successful Actions run installed FFmpeg/FFprobe, installed the HyperFrames CLI and browser, linted/checked a generated scaffold, rendered an MP4, and validated its metadata.
- Found that the smoke workflow rendered only the fresh scaffold and never copied in a ThinkVerse composition. This explains the placeholder output; it was not evidence of an FFmpeg failure.
- Added `render/templates/thinkverse-scene/index.html`: a 12-second, 1920x1080, two-scene visual calibration with an embedded SVG presenter and timed GSAP animation.
- Updated `.github/workflows/hyperframes-smoke.yml` to install GSAP locally, inject the committed composition, run lint/check, render at 30 fps, validate duration/dimensions/frame rate, and reject a nearly uniform sampled frame.
- The updated workflow has not been run from this session; manual Actions execution and human visual inspection remain required.
