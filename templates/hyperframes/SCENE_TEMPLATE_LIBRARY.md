# Reusable Scene Template Library

These are production blueprints, not claims that HyperFrames projects have already been created or rendered. Implement them using the syntax and features confirmed by the connected renderer.

## Template index
| ID | Scene pattern | Best use | Default frame |
|---|---|---|---|
| SC-01 | Cold-open hook | Opening question, surprising fact, or visual mystery | 9:16 / 16:9 |
| SC-02 | Narration + cinematic B-roll | Story progression and context | 9:16 / 16:9 |
| SC-03 | Animated explainer | Processes, comparisons, systems, and concepts | 16:9; adapt to 9:16 |
| SC-04 | Timeline / sequence | History, milestones, chronology | 16:9; adapt to 9:16 |
| SC-05 | Map / location reveal | Geography, journeys, place-based stories | 16:9; adapt to 9:16 |
| SC-06 | Evidence / data card | Statistics, sourced claims, comparisons | 9:16 / 16:9 |
| SC-07 | Quote / key takeaway | Important statement or memorable conclusion | 9:16 / 16:9 |
| SC-08 | Chapter transition | Long-form chapter changes | 16:9 |
| SC-09 | Demonstration / screen walkthrough | Apps, tools, products, procedures | 9:16 / 16:9 |
| SC-10 | Ending / payoff | Resolve opening promise and close the story | 9:16 / 16:9 |

## SC-01 — Cold-open hook
- Purpose: earn attention immediately.
- Duration guide: 2–8 seconds for Shorts; 5–15 seconds for long-form.
- Fields: hook_text, narration, hero_visual, accent_label.
- Motion: reveal the main visual first; bring in short text with a restrained move or mask; hold long enough to read.
- Sound: optional subtle impact; narration remains dominant.
- Avoid: long logo intros, multiple competing text blocks, effects without story purpose.

## SC-02 — Narration + cinematic B-roll
- Purpose: show what the narration describes.
- Duration: fit the spoken sentence or thought; use purposeful shot changes.
- Fields: narration, media_asset, optional_caption, source_credit.
- Motion: gentle push, pan, or cut; avoid applying the same move to every shot.
- Sound: narration clear; ambience/music restrained.
- Asset rule: use relevant, rights-cleared media and track source in the asset manifest.

## SC-03 — Animated explainer
- Purpose: make an abstract idea understandable.
- Fields: concept_title, nodes_or_steps, labels, narration, highlight_target.
- Motion: reveal one step at a time; emphasize the current item; keep previous context visible when useful.
- Sound: soft transition accents only where they improve comprehension.
- Quality rule: readable labels, consistent spacing, no decorative motion that obscures relationships.

## SC-04 — Timeline / sequence
- Purpose: communicate chronological progression.
- Fields: events, dates_or_periods, descriptions, media_refs.
- Motion: line or markers reveal progressively; highlight the active event.
- Quality rule: chronology and dates must be verified; avoid cramming too many events into one frame.

## SC-05 — Map / location reveal
- Purpose: orient the viewer geographically.
- Fields: map_asset, location_labels, route_or_region, narration.
- Motion: establish the full context before focusing on the relevant area.
- Quality rule: use accurate map data and attribution; don't imply a route or boundary that is not supported.

## SC-06 — Evidence / data card
- Purpose: present a sourced statistic or comparison.
- Fields: headline, value, unit, comparison, source_note.
- Motion: reveal headline, then value, then comparison; use restrained count-up only when technically reliable.
- Quality rule: show units and context; never animate a number in a way that changes its meaning.

## SC-07 — Quote / key takeaway
- Purpose: give a statement room to land.
- Fields: quote, speaker_or_source, context.
- Motion: text appears in short readable groups; attribution follows.
- Quality rule: preserve exact wording when presented as a quotation and cite the source in production notes.

## SC-08 — Chapter transition
- Purpose: signal a meaningful section change in long-form videos.
- Fields: chapter_number, chapter_title, motif_asset.
- Motion: short visual reset using the established visual identity.
- Quality rule: transitions should be brief and consistent, not interrupt the narrative.

## SC-09 — Demonstration / screen walkthrough
- Purpose: show a real interface or process.
- Fields: screen_recording, focus_area, step_caption, narration.
- Motion: crop or highlight the relevant area; sequence steps clearly.
- Quality rule: use genuine captured UI; hide private information; don't fabricate interface results.

## SC-10 — Ending / payoff
- Purpose: resolve the opening promise and leave one clear final thought.
- Fields: payoff_line, closing_visual, optional_next_step.
- Motion: simplify the frame and let the final point land.
- Quality rule: don't add a generic CTA if it weakens the ending.

## Template use record
For each video, record:
- Template IDs used
- Any changed fields
- Any new assets
- Preview status
- What should be improved next time

Version templates when changing their reusable structure. Keep approved versions available for existing videos.
