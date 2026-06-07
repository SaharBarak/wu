# 01-VERIFICATION — ACPCM showcase site vs UI-SPEC

**Method:** deterministic greps over `docs/index.html` + `node --check` on inline JS + full-page
headless render (Chrome) for visual composition. Date: 2026-06-07.

## Acceptance criteria (from 01-UI-SPEC §6)

| # | Criterion | Result | Evidence |
|---|---|---|---|
| 1 | Inter banned; Satoshi + JetBrains loaded | PASS | font links present; "Inter" matches are `IntersectionObserver`, not the font |
| 2 | No pure black `#000` | PASS | grep count 0; bg `#0c0e0f` |
| 3 | One accent family; no purple/neon glow | PASS | only `#5b9ea6/dim/pale`; no `box-shadow` glow |
| 4 | No emojis | PASS | SVG icons only |
| 5 | 8 sections in order | PASS | `<section>` count = 8; section numbers 01–08 |
| 6 | Asymmetric hero, display weight 300 | PASS | hero grid 1–8 / 9–12; `font-weight:300` |
| 7 | ASSUMPTION 1/2/3 + §04 pullquote | PASS | all three tags; "established citations…" pullquote present |
| 8 | Refuted row struck-through + refuted border | PASS | `line-through` rule + `.lead[data-status="refuted"]` |
| 9 | Assumption-3 ledger row border 6px | PASS | `data-loadbearing]{border-left-width:6px}` |
| 10 | Status by icon + label, not color alone | PASS | `ICONS` line-icons + mono text badges |
| 11 | Canvas animation gated by reduced-motion | PASS | 4 `prefers-reduced-motion` blocks; static fallbacks |
| 12 | No scroll-driven layout | PASS | progress uses `transform:scaleX`; reveals via IntersectionObserver |
| 13 | Mobile single-column + stacked ledger | PASS | `max-width:768px` query; `.lrow` → card |
| 14 | Preprint CTA is a text link to `main.pdf` | PASS | `.cta` anchor, not a filled button |
| 15 | Honesty foregrounded | PASS | hero "probably does not work"; refuted ideas labeled |

**JS:** `node --check` clean (245 lines inline). **Visual:** full-page render confirms composition,
palette, type, climax banner, ledger table, and staircase predictions.

## Phase success criteria (ROADMAP)
- [x] Live URL serves a styled page (not 404 / raw README) — Pages enabled from `/docs`
- [x] Geist/Satoshi type, zinc/slate palette, single accent — no Inter, no AI-purple, no pure black
- [x] Design-direction brief committed (UI-SPEC + octo "Supercooled Clarity") governing all phases

## Verdict
**VERIFIED** — 15/15 acceptance criteria pass. Residual polish (canvas contrast, optional WebGL) tracked as v2.
