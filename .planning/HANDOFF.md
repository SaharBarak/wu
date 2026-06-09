# Session Handover — wu / ACPCM

**Updated:** 2026-06-07 · **Latest commit at handover:** `20471aa`

## What this project is
- **Repo:** `github.com/SaharBarak/wu` (public, personal account `SaharBarak`).
- **Two deliverables in one repo:**
  1. **The preprint** — `main.tex` + `main.pdf` + `README.md`: a *speculative* arXiv-style "idea paper", **Acousto-Cymatic Phase-Change Memory (ACPCM)** — storing data in the topology of rapidly frozen water. Honesty is the whole point: refuted ideas (water memory, Russell octaves) carry zero logical load; the single load-bearing claim is isolated as **Assumption 3**. All 33 references independently verified (Crossref/publisher/arXiv/ADS).
  2. **The showcase site** — `docs/index.html` (single static file, zero build), deployed via **GitHub Pages** at **https://saharbarak.github.io/wu/** (serves from `main` `/docs`).

## Hard constraints / decisions (do not violate)
- **No Claude/Anthropic co-author on commits** (user's global rule). Repo git identity is set to `SaharBarak <sahar.h.barak@gmail.com>`.
- **Site = static, no build step** (Pages serves raw files). Vanilla JS + `<canvas>`, no framework/bundler.
- **Design authority = taste-skill (binding) + octo "Supercooled Clarity" direction.** Tokens live at the top of `docs/index.html` `:root`. Fonts **Satoshi + JetBrains Mono (NEVER Inter)**; one desaturated accent `#5b9ea6` on a zinc/slate base; no pure black (`#0c0e0f`), no AI-purple, no neon glows, no emojis, no 3-equal-card rows, asymmetric layouts; animate **transform/opacity only**; `prefers-reduced-motion` fallbacks; grain on one fixed layer.
- **Honesty is a hard requirement** site-wide (speculative status foregrounded; Assumption 3 flagged probably-false).
- **Cross-vendor (Gemini/Codex/OpenCode) is ALLOWED for this repo** (changed 2026-06-09 by the user: "change repo policy. i want to know"). This repo is **public** (`github.com/SaharBarak/wu`), so sending its content to external models is acceptable; the user explicitly wants external multi-LLM opinions (e.g. `/octo:review` with all providers), not Claude-only panels. Still avoid hardcoded secrets and don't send anything from *other* (private) repos without per-target consent.

## Site structure (`docs/index.html`, sections in order)
01 Hero (`#problem`, title **"wu"**, ACPCM as kicker/subheader) · 02 Medium (`#pods`) · 03 Cymatic grid + device (`#grid`) · 04 Write/freeze CLIMAX (`#write`) · 05 Read (`#read`) · 06 Epistemic ledger (`#ledger`) · 07 Falsifiable predictions (`#predictions`) · 08 **The Prize** (`#potential`) · 09 Preprint (`#preprint`).
- Canvas animations (vanilla, shared rAF, IO-paused offscreen): `makeCymatic` (hero liquid + freeze), `makeMedium` (pods + contained pulse + isolation), `makeDevice` (transducer array → pod → standing-wave grid, `cos(kr)cos(pθ)`), `makeRead` (pulse→scatter→bits).
- Ledger = clean 2-col rows + mono status chips (same component as ASSUMPTION tags); struck-through refuted row; 6px load-bearing border on Assumption 3.
- "The Prize" = capacity section: ~10²¹ molecules/droplet → exabyte molecular ceiling vs ~1 MB diffraction-limited reality (~14-order gap), with a single log-axis visual; argues *why the cheap, falsifiable trial matters*.

## GSD planning artifacts (`.planning/`)
`PROJECT.md`, `REQUIREMENTS.md` (18 reqs), `ROADMAP.md` (3 phases, all marked done), `config.json`, `STATE.md`, and `phases/phase-01/`: `01-UI-SPEC.md` (design contract), `01-01-PLAN.md`, `01-VERIFICATION.md` (15/15 acceptance criteria passed). Phase dirs `phase-02`, `phase-03` exist but are empty (work was delivered as one artifact in phase 01).

## How to build / verify / deploy
- **Preprint:** `tectonic main.tex` (tectonic installed via brew). 11 pages.
- **Site is static** — just edit `docs/index.html`.
- **Verify visually (headless Chrome + ImageMagick, both installed):**
  - Quirk: headless only captures the viewport, and `min-height:100dvh` distorts tall captures. Use a *verify copy* that normalizes it:
    ```
    sed 's/min-height:100dvh/min-height:auto/g' docs/index.html > /tmp/v.html
    # force reveals visible + instant scroll via an injected <style> before </head>:
    #   html{scroll-behavior:auto!important}.reveal{opacity:1!important;transform:none!important}.lrow{opacity:1!important;transform:none!important}
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars --window-size=1440,9600 --virtual-time-budget=4500 --screenshot=/tmp/full.png file:///tmp/v.html
    magick /tmp/full.png -crop 1440x1400+0+<yoffset> +repage /tmp/band.png   # then Read the band
    ```
  - JS syntax check: `awk '/<script>/{f=1;next}/<\/script>/{f=0}f' docs/index.html > /tmp/s.js && node --check /tmp/s.js`
- **Deploy:** commit + `git push origin main`. Pages auto-builds. Confirm with `gh api repos/SaharBarak/wu/pages/builds/latest -q .commit` == HEAD. CDN edge can lag ~1 min; cache-bust with `?cb=$(date +%s)`.

## Loose ends / backlog
- **Dead CSS:** one unused `.lcell{...}` rule remains in the mobile `@media (max-width:768px)` block — harmless, remove on next pass.
- Possible polish: animate the falsification-flow SVG path-draw on scroll; counter-animate the capacity numbers; push canvas stroke contrast a touch; custom OG/social card; optional WebGL upgrade for freeze/cymatics (v2 in REQUIREMENTS).
- Fonts load from CDN (Fontshare/Google); self-hosting woff2 in `docs/fonts/` would remove the runtime dependency (UI-SPEC notes this).

## Context the model should know (not in the repo)
- The user evaluated this work for the **Anthropic Fellows program**. Honest consensus (mine + 3 octo Claude panels + the user's own Gemini run): the **preprint** is well-crafted but speculative/off-target for an *empirical AI-safety* fellowship (quality ~6–7.5/10, Fellows-fit ~1–3/10); the genuinely transferable asset is the **epistemic-ledger / falsifiable-method discipline**, which should be pointed at a real safety question. The **akashik** project at `~/personal/akashik` (federated P2P agent-memory) is the stronger, on-target portfolio piece (octo panel: quality 7/10, Fellows-fit 3/10; flagged its AkashikBench-F headline as near-tautological).
- Heavy orchestration is expected/wanted: user likes gsd + taste-skill + claude-octo + workflows.

## To resume
Read this file + `.planning/STATE.md` + `.planning/phases/phase-01/01-UI-SPEC.md`, then `git log --oneline -8` to see recent work. Site and preprint are in a clean, fully-committed state.
