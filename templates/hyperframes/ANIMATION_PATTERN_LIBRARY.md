# Reusable Animation Pattern Library

Use these patterns as motion direction. They are renderer-neutral until the active HyperFrames integration confirms the exact implementation and supported properties.

## Motion principles
- Motion must clarify hierarchy, timing, or meaning.
- Keep text readable and on screen long enough to understand.
- Prefer a small consistent motion vocabulary over unrelated effects.
- Respect narration; avoid fast visual changes during complex spoken information.
- Use easing and pauses deliberately. Avoid constant movement.
- Preserve the user's approved visual identity across videos.

## Pattern index
| ID | Pattern | Use |
|---|---|---|
| AN-01 | Clean fade + rise | Titles and captions |
| AN-02 | Masked reveal | Headline or image reveal |
| AN-03 | Focus push | Draw attention to a subject |
| AN-04 | Progressive build | Diagrams and processes |
| AN-05 | Highlight sweep | Emphasize a phrase or data point |
| AN-06 | Parallax drift | Add subtle depth to still imagery |
| AN-07 | Match cut / motivated cut | Connect related scenes |
| AN-08 | Chapter wipe | Section transitions |
| AN-09 | Map route reveal | Explain a route or sequence |
| AN-10 | Hold and resolve | Let a key reveal or conclusion land |

## Pattern notes
### AN-01 — Clean fade + rise
Fade in while moving a short distance upward. Use for titles, labels, and lower thirds. Keep movement subtle and avoid bouncing.

### AN-02 — Masked reveal
Reveal text or imagery through a clean mask. Use for a strong opening or a deliberate reveal. Do not hide important words for too long.

### AN-03 — Focus push
A gentle scale or camera push toward the important subject. Use only when the image has enough resolution and the crop remains intentional.

### AN-04 — Progressive build
Reveal diagram components in narration order. Keep completed components visible if the viewer needs them for context.

### AN-05 — Highlight sweep
Move a highlight across a phrase, line, or value. Use sparingly and ensure contrast remains accessible.

### AN-06 — Parallax drift
Separate foreground and background layers for subtle depth. Only use when assets support clean separation; never imply real camera movement where it could mislead.

### AN-07 — Match cut / motivated cut
Cut between visuals linked by shape, action, color, or idea. The relationship should help the story, not merely look stylish.

### AN-08 — Chapter wipe
A consistent short transition for long-form chapter changes. Use the same direction and visual motif throughout a project.

### AN-09 — Map route reveal
Reveal a verified route or sequence progressively. Labels must remain legible and geography accurate.

### AN-10 — Hold and resolve
Reduce motion before a key line, reveal, or ending. Give the audience time to absorb the point.

## Timing guidance
Timing is editorial, not a hard-coded renderer promise:
- Micro-reveal: roughly 0.2–0.5 seconds.
- Standard title or label entrance: roughly 0.3–0.8 seconds.
- Diagram step: match the spoken explanation; often 0.5–1.5 seconds per step.
- Chapter transition: usually brief, around 0.5–1.5 seconds.
- Important takeaway: hold long enough to read and understand.

Adjust to narration speed, screen size, and story complexity. Do not force every pattern to use the same duration.

## Accessibility and quality
- Maintain strong text/background contrast.
- Avoid rapid flashing and strobing.
- Avoid excessive zooms, shakes, and continuous movement.
- Keep subtitles clear of platform UI overlays.
- Check both mobile and desktop framing.
- Verify all animation timing in an actual preview before marking it approved.

## Versioning
Give reusable patterns stable IDs. If a pattern changes materially, create a new version or ID and record the change in production notes. Never silently alter an approved pattern used by an active video.
