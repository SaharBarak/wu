# Requirements: ACPCM Showcase Site

**Defined:** 2026-06-07
**Core Value:** A visitor scrolls once and gets the ACPCM concept — including, honestly, why it probably doesn't work.

## v1 Requirements

### Site & Delivery

- [ ] **SITE-01**: Site is static files under `/docs` (`index.html` + assets), served by GitHub Pages at `saharbarak.github.io/wu` with no build step
- [ ] **SITE-02**: Layout is responsive — asymmetric on desktop, clean single-column fallback below `768px`, no horizontal scroll
- [ ] **SITE-03**: Accessible & performant — semantic landmarks, keyboard-reachable links, `prefers-reduced-motion` disables non-essential motion, 60fps (transform/opacity only, no scroll-event thrash)

### Narrative

- [ ] **NARR-01**: Hero + the storage-scaling problem (superparamagnetic limit) frames why an exotic medium is even considered
- [ ] **NARR-02**: "Confined aqueous pods" section explains isolation (charge-trap-flash analogy)
- [ ] **NARR-03**: Cymatic standing-wave addressing grid section (the cylinder-head-sector analogue)
- [ ] **NARR-04**: Broadcast-and-freeze write section (phase-change, HAMR/PCM analogy, Assumption 3 as the load-bearing claim)
- [ ] **NARR-05**: MHz acoustic-holography + neural-decode read section
- [ ] **NARR-06**: Epistemic ledger section — every subsystem mapped to established / contested / refuted
- [ ] **NARR-07**: Falsifiable predictions section — "probably won't work; here's how to test it"
- [ ] **NARR-08**: Clear link to the preprint (`main.pdf`) and source repo

### Animation

- [ ] **ANIM-01**: Scroll-driven progressive reveals tie the narrative together (IntersectionObserver / rAF)
- [ ] **ANIM-02**: Signature canvas piece — liquid water → instantaneous freeze → cymatic standing-wave nodes locking a pattern
- [ ] **ANIM-03**: Read-path animation — MHz pulse scatters off frozen "ice phase plate" → volumetric field → decoded bitstream
- [ ] **ANIM-04**: Epistemic-ledger reveal animates the established/contested/refuted status coding

### Design

- [ ] **DSGN-01**: Implements taste-skill system — Geist/Satoshi type (no Inter), one desaturated accent on zinc/slate, no AI-purple / pure-black / emoji / neon glows / 3-equal-card rows, asymmetric composition
- [ ] **DSGN-02**: Visual/motion direction produced via claude-octo (ui-ux-designer + frontend-developer personas) before build

### Honesty

- [ ] **HON-01**: Speculative status is foregrounded site-wide; refuted ideas (water memory, Russell octaves) are labeled as such; the load-bearing claim is explicitly flagged as probably false

## v2 Requirements

### Enhancements

- **ENH-01**: Custom OpenGraph/social preview card
- **ENH-02**: Optional WebGL upgrade for the freeze/cymatics canvas
- **ENH-03**: Custom domain

## Out of Scope

| Feature | Reason |
|---------|--------|
| Build pipeline (Next.js/Vite) | Pages serves raw files; static keeps it zero-friction |
| Backend / interactive app | It's an explainer, not an application |
| Analytics / tracking / cookies | Static explainer, no data collection |
| Extending the science | Site presents the existing paper, doesn't add claims |

## Traceability

| Requirement | Phase | Status |
|-------------|-------|--------|
| DSGN-02 | Phase 1 — Foundation | Pending |
| DSGN-01 | Phase 1 — Foundation | Pending |
| SITE-01 | Phase 1 — Foundation | Pending |
| NARR-01 | Phase 2 — Narrative | Pending |
| NARR-02 | Phase 2 — Narrative | Pending |
| NARR-03 | Phase 2 — Narrative | Pending |
| NARR-04 | Phase 2 — Narrative | Pending |
| NARR-05 | Phase 2 — Narrative | Pending |
| NARR-06 | Phase 2 — Narrative | Pending |
| NARR-07 | Phase 2 — Narrative | Pending |
| NARR-08 | Phase 2 — Narrative | Pending |
| SITE-02 | Phase 2 — Narrative | Pending |
| HON-01 | Phase 2 — Narrative | Pending |
| ANIM-01 | Phase 3 — Motion & Ship | Pending |
| ANIM-02 | Phase 3 — Motion & Ship | Pending |
| ANIM-03 | Phase 3 — Motion & Ship | Pending |
| ANIM-04 | Phase 3 — Motion & Ship | Pending |
| SITE-03 | Phase 3 — Motion & Ship | Pending |

**Coverage:**
- v1 requirements: 18 total
- Mapped to phases: 18
- Unmapped: 0 ✓

---
*Requirements defined: 2026-06-07*
*Last updated: 2026-06-07 after roadmap creation*
