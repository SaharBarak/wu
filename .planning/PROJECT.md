# ACPCM Showcase Site

## What This Is

An animation-rich, scroll-driven single-page website that explains **Acousto-Cymatic
Phase-Change Memory (ACPCM)** — the speculative "store data in rapidly frozen water"
idea-paper already in this repo — to a smart general/technical audience. It lives in
`/docs` and is served by GitHub Pages at `saharbarak.github.io/wu`, alongside the
LaTeX preprint (`main.tex`/`main.pdf`).

## Core Value

A visitor scrolls once and *gets it*: what ACPCM proposes, how each subsystem maps to real
engineering, and — honestly — why it probably doesn't work. The honesty (the epistemic
ledger) is the centerpiece, not a disclaimer.

## Requirements

### Validated

(None yet — ship to validate)

### Active

- [ ] Static site in `/docs`, zero build step, served by GitHub Pages
- [ ] Eight-section scrollytelling narrative (problem → pods → cymatic grid → write → read → ledger → predictions → preprint link)
- [ ] Signature canvas animation: liquid water → freeze → cymatic standing-wave nodes
- [ ] Read-path animation: MHz pulse → scattered field → decoded bits
- [ ] Epistemic ledger rendered as the honest centerpiece (established/contested/refuted)
- [ ] taste-skill design system (Geist/Satoshi, single desaturated accent, zinc/slate base)
- [ ] Design direction produced via claude-octo (ui-ux-designer + frontend-developer)
- [ ] Responsive (mobile single-column), accessible (prefers-reduced-motion), performant
- [ ] Speculative status foregrounded; refuted ideas labeled; load-bearing claim flagged probably-false

### Out of Scope

- Framework/build pipeline (Next.js/Vite) — Pages must serve raw files; keep it static
- Backend / interactivity beyond client-side animation — it's an explainer, not an app
- Re-litigating the science — the site presents the paper, it doesn't extend it
- Analytics/tracking, cookie banners — static explainer, no data collection

## Context

- Repo `github.com/SaharBarak/wu` (public) already contains the verified preprint:
  `main.tex`, `main.pdf`, `README.md` (with the full citation audit trail).
- The paper's structure maps 1:1 to the site sections; figures (overview, pod, read chain)
  and Table 1 (epistemic ledger) are the visual anchors to translate into motion.
- Design intelligence is supplied by two already-active tools: **taste-skill** (loaded:
  DESIGN_VARIANCE 8, MOTION_INTENSITY 6, VISUAL_DENSITY 4) and **claude-octo** personas.

## Constraints

- **Tech stack**: Static HTML/CSS/JS in `/docs`, no build step (GitHub Pages serves it raw). Vendored libs (e.g. GSAP) allowed if committed; prefer minimal/vanilla + canvas.
- **Design**: taste-skill rules are binding — fonts Geist/Satoshi (NOT Inter); one desaturated accent on a zinc/slate neutral base; BANNED: AI-purple, pure black (#000), emojis, neon/outer glows, generic 3-equal-card rows; asymmetric layouts; animate transform/opacity only.
- **Performance**: 60fps target; no `scroll` event thrash (IntersectionObserver / rAF); grain/noise only on fixed pointer-events-none layers; `prefers-reduced-motion` honored.
- **Honesty**: Must not present ACPCM as feasible; the epistemic framing is a hard requirement, not optional polish.

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Static site in `/docs`, no build step | GitHub Pages serves raw files; zero-friction publish; matches "showcase" goal | — Pending |
| Skip GSD domain research agents | Known domain (web); design intelligence comes from octo + taste-skill instead | — Pending |
| Design direction via claude-octo personas | User explicitly requested octo for design; taste-skill supplies the hard constraints | — Pending |
| Honesty/epistemic-ledger as centerpiece | The paper's one genuine strength is its calibrated honesty; the site should lead with it | — Pending |

---
*Last updated: 2026-06-07 after initialization*
