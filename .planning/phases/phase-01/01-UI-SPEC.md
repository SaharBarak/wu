# UI-SPEC — ACPCM Showcase Site (Phase 01, governs all phases)

**Status:** Active design contract
**Authority:** taste-skill (binding) + claude-octo "Supercooled Clarity" direction
**Checkable against:** `/docs/index.html`
**Updated:** 2026-06-07

---

## 0. Concept

**"Supercooled Clarity"** — the instant before water freezes: structurally ordered, not yet
committed, honest about its uncertainty. Cold, precise typography; generous negative space;
the epistemic ledger deliberately breaks the grid because honesty is the point.

Metaphor triad: water/ice (medium + process) · standing waves (order imposed on chaos) ·
the ledger (the moment the field commits to what it is and is not).

---

## 1. Design tokens

### Color (dark, zinc shifted toward ice-blue ~215°; no pure black, one accent)
| Token | Hex | Use |
|---|---|---|
| `--color-bg` | `#0c0e0f` | page background |
| `--color-surface-1` | `#141618` | section elevation 1 |
| `--color-surface-2` | `#1e2124` | section elevation 2, callouts |
| `--color-border` | `#2a2e33` | all 1px borders (never glows) |
| `--color-muted` | `#5a6370` | captions, mono labels |
| `--color-text` | `#d8dde3` | body |
| `--color-text-strong` | `#edf0f3` | headings |
| `--color-accent` | `#5b9ea6` | accent (glacial teal, ~43% sat) — used sparingly |
| `--color-accent-dim` | `#3d6e75` | accent borders/inactive |
| `--color-accent-pale` | `#1a3840` | tinted fills, selection |

### Ledger status (muted, NOT traffic-light; always + line-icon + text label)
`established #4a8c78` · `plausible #7a8f6a` · `speculative #9a8560` · `contested #7a6e88` · `refuted #6b4a4a`
Row background = status hex at ~6–10% over surface.

### Type
- Display/body: **Satoshi** (300/400/500). Mono: **JetBrains Mono** (400/500). **Inter is banned.**
- Major-third clamp() scale: `--text-xs … --text-2xl … --text-display` (fluid 390→1440px).
- Tracking: `-0.03em` display, `-0.01em` body, `0.08em` mono labels, `0.12em` section numbers.
- Leading: 1.1 display / 1.35 headings / 1.6 body.
- Mono never larger than `--text-sm` except standalone callout numerals.

### Space & grid
- 12-col fractional grid, `--max-width:1320px`, fluid margins `clamp(1.25rem,6vw,7rem)`.
- Spacing scale `--space-2 … --space-7`, `--space-section clamp(6rem,14vw,12rem)`.
- Radius ≤ 2px (cold/angular); display elements zero radius.

---

## 2. Layout system

- **Asymmetric per section**, alternating left/right dominance. No centered hero. No 3-equal-card rows.
- Section number ornament (`01`…`08`) in mono `--tracking-widest`, accent-dim.
- Backgrounds alternate bg / surface-1 / surface-2 to create rhythm; sections overlap so boundaries read clean.

---

## 3. Per-section contract

| # | Section | Composition | Required elements |
|---|---|---|---|
| 01 | Hero + storage problem | display "ACPCM" weight 300 cols 1–8; liquid canvas cols 9–12 | rotated mono side-label; superparamagnetic-limit framing; "honesty is the point" |
| 02 | Confined pods | split: text 1–6 / pod canvas 7–12 | `ASSUMPTION 1` tag; CTF isolation analogy; 50 fs memory-loss fact |
| 03 | Cymatic grid | left-dominant text; standing-wave canvas right | `ASSUMPTION 2`; **paired** established (left) vs speculative (right) callouts; `f(r,θ)=cos(kr)cos(pθ)` caption |
| 04 | Broadcast & freeze (CLIMAX) | full-width title; freeze canvas | `ASSUMPTION 3` banner (speculative color); the pullquote *"established citations ground only their own subsystems…"*; "9% expansion fights the pattern" |
| 05 | MHz read | right-dominant text; read canvas left | hydrophone + U-Net; ill-posed/hallucination caveat |
| 06 | Epistemic ledger (CENTERPIECE) | verdict-document table | left-border status colors; struck-through refuted row; **6px** border on Assumption-3 row; "load-bearing" note; staggered reveal; mobile→stacked cards |
| 07 | Falsifiable predictions | staircase-indented P1/P2/P3 (no boxes) | falsification condition per prediction; "if P1 fails — the most likely outcome…" |
| 08 | Preprint link | left-dominant | text CTA (NOT filled button) → `main.pdf`; quiet pull-cite right |

---

## 4. Signature animations (canvas, vanilla JS)

- **A — Freeze/cymatics:** liquid particles → freeze-front sweep (L→R) → particles gradient-descend `|f|`,
  `f(r,θ)=cos(kr)cos(pθ)`, `k≈3π`, `p=6`, locking onto nodal lines (concentric rings + radial spokes).
  Used in: hero (liquid only), §03 (oscillating grid), §04 (full freeze on view).
- **B — Read path:** MHz sine wavefront → ice phase-plate glyph (bordered box) → scattered arcs → decoded bitstream (mono).
- Shared single `requestAnimationFrame` loop; canvases paused offscreen via IntersectionObserver; DPR capped at 2.

---

## 5. Motion & accessibility contract

- Animate **transform/opacity only**; no animation of layout properties; no `scroll`-event-driven layout.
- Scroll reveals via IntersectionObserver (threshold ~0.15).
- `prefers-reduced-motion: reduce` → all canvas animation replaced by a single static representative frame; reveals shown immediately; ledger stagger disabled.
- Grain: one `position:fixed; pointer-events:none` layer only; never on scrolling/canvas/text.
- Semantic landmarks; links keyboard-reachable; ledger uses text labels + line-icons (never color alone).
- Responsive: asymmetric ≥768px; clean single column <768px; no horizontal scroll; ledger collapses to stacked cards.

---

## 6. Acceptance criteria (binary checks vs `/docs/index.html`)

1. [ ] No `Inter` font referenced anywhere; Satoshi + JetBrains Mono loaded.
2. [ ] No pure black `#000`/`#000000`; background is `#0c0e0f`.
3. [ ] Exactly one accent family (`#5b9ea6`/dim/pale); no purple/neon/`box-shadow` glows.
4. [ ] No emoji characters in markup or content.
5. [ ] All 8 sections present in order with their section number ornaments.
6. [ ] Hero is asymmetric (not centered); display weight is 300.
7. [ ] `ASSUMPTION 1/2/3` tags present in §02/§03/§04; §04 carries the "established citations…" pullquote.
8. [ ] Ledger: refuted row is `text-decoration:line-through` AND has the refuted left-border.
9. [ ] Ledger: Assumption-3 (phase-change write) row has `border-left-width:6px` (heavier than others).
10. [ ] Ledger status conveyed by icon + text label, not color alone.
11. [ ] Every canvas animation is gated by `prefers-reduced-motion` with a static fallback.
12. [ ] No `scroll` event listener drives layout; reveals use IntersectionObserver.
13. [ ] `<768px`: single column, ledger becomes stacked cards, no horizontal overflow.
14. [ ] Preprint CTA is a text link to `main.pdf` (not a filled button).
15. [ ] Honesty foregrounded: hero states the idea "probably does not work"; refuted ideas labeled.

---

## 7. Out of scope (this contract)

Build pipeline/framework, backend, analytics/cookies, custom domain (v2), WebGL upgrade (v2).
