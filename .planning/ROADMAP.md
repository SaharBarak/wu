# Roadmap: ACPCM Showcase Site

## Overview

Three phases deliver a static, animation-rich scroll-driven site explaining ACPCM at `saharbarak.github.io/wu`. Phase 1 locks design direction and proves the deploy pipeline. Phase 2 builds the full eight-section narrative with layout and honesty framing. Phase 3 adds the signature canvas animations, accessibility hardening, and final ship verification.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [x] **Phase 1: Foundation** - Design direction (claude-octo + taste-skill) + static scaffold + GitHub Pages deploy pipeline end-to-end
- [x] **Phase 2: Narrative** - All eight sections, layout, responsiveness, and epistemic-ledger honesty framing
- [x] **Phase 3: Motion & Ship** - Signature canvas animations, scroll choreography, a11y/perf polish, live verification

## Phase Details

### Phase 1: Foundation
**Goal**: A live, correctly-styled scaffold is deployed at `saharbarak.github.io/wu` and design direction is fixed before any content is written
**Depends on**: Nothing (first phase)
**Requirements**: DSGN-02, DSGN-01, SITE-01
**Success Criteria** (what must be TRUE):
  1. Visiting `saharbarak.github.io/wu` serves a page (no 404, no raw README)
  2. The page uses Geist/Satoshi type, a zinc/slate palette, and the single desaturated accent — no Inter, no AI-purple, no pure black
  3. A written design-direction brief (claude-octo output) is committed to the repo, capturing composition choices, motion intensity, and section layout decisions that govern Phases 2 and 3
**Plans**: TBD

### Phase 2: Narrative
**Goal**: A visitor can scroll the complete eight-section story — from the storage-scaling problem through the epistemic ledger — on desktop and mobile, with ACPCM's speculative status never in doubt
**Depends on**: Phase 1
**Requirements**: NARR-01, NARR-02, NARR-03, NARR-04, NARR-05, NARR-06, NARR-07, NARR-08, SITE-02, HON-01
**Success Criteria** (what must be TRUE):
  1. All eight sections are present and readable in order: hero/problem → pods → cymatic grid → write → read → epistemic ledger → predictions → preprint link
  2. The epistemic ledger section visually distinguishes established, contested, and refuted subsystems — refuted claims (water memory, Russell octaves) are labeled as refuted, not contested
  3. The load-bearing write assumption (Assumption 3) is explicitly flagged as probably false within the write section
  4. On a viewport below 768px the layout collapses to clean single-column with no horizontal scroll
  5. The preprint PDF link (`main.pdf`) and source repo link are reachable from the page
**Plans**: TBD

### Phase 3: Motion & Ship
**Goal**: Scroll choreography and signature canvas animations are live, motion is gated by `prefers-reduced-motion`, performance holds 60fps, and the shipped URL is publicly verified
**Depends on**: Phase 2
**Requirements**: ANIM-01, ANIM-02, ANIM-03, ANIM-04, SITE-03
**Success Criteria** (what must be TRUE):
  1. Scrolling the page triggers progressive section reveals (IntersectionObserver/rAF — no scroll-event thrash)
  2. The write-section canvas plays: liquid water transitions to freeze, then cymatic standing-wave nodes lock a visible pattern
  3. The read-section canvas plays: an MHz pulse scatters off the frozen plate and a decoded bitstream emerges
  4. The epistemic ledger entries animate in with established/contested/refuted status coding visible on entry
  5. With `prefers-reduced-motion: reduce` active all non-essential animations are suppressed and no content is hidden; keyboard navigation reaches all links; the page renders at 60fps on mid-range hardware (transform/opacity only)
**Plans**: TBD

## Progress

**Execution Order:**
Phases execute in numeric order: 1 → 2 → 3

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 1. Foundation | 0/TBD | Not started | - |
| 2. Narrative | 0/TBD | Not started | - |
| 3. Motion & Ship | 0/TBD | Not started | - |
