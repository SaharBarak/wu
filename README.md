# Acousto-Cymatic Phase-Change Memory (ACPCM) - arXiv preprint

A **speculative theoretical preprint** ("idea paper") that transposes two proven storage
principles - rapid phase-change writing (HAMR, chalcogenide PCM) and microscopic isolation
(charge-trap flash) - onto a rapidly frozen aqueous medium, with an acoustic-holographic,
neural-decoded read path. It is written to arXiv conventions (single-column, numbered
references, abstract + keywords) and is intended as a **hypothesis generator, not a
feasibility claim**.

> **Epistemic stance.** The manuscript is deliberately honest about its mixed pedigree. It
> separates *established* engineering (HAMR, 3D NAND CTF, PCM, acoustic holography,
> acoustofluidics, deep-learning acoustic inversion, data sonification) from *contested*
> premises (structured/"fourth-phase" water, Orch-OR microtubules) and *refuted*
> pseudoscience ("water memory", W. Russell's octave cosmology). The refuted ideas carry
> **no logical load** - they appear only as motivational/historical framing. See the
> "Epistemic ledger" (Table 1) in the paper.

## Files

| File | Purpose |
|------|---------|
| `main.tex`   | The complete preprint (self-contained; embedded `thebibliography`). |
| `main.pdf`   | Compiled output (11 pages). |
| `Makefile`   | `make` / `make clean` helpers. |
| `README.md`  | This file, including the **citation audit trail**. |

## Build

The document is self-contained - **no external `.bib`** (the bibliography is embedded), and
all packages are standard TeX Live. Pick either toolchain:

### Option A - Tectonic (recommended; self-installs packages)
```bash
brew install tectonic        # one-time, if not present
tectonic main.tex            # produces main.pdf
```

### Option B - TeX Live
```bash
pdflatex main.tex
pdflatex main.tex            # second pass resolves \cite / \ref / cleveref
```

Required packages (all in a standard TeX Live / MacTeX install): `geometry`, `newtxtext`,
`newtxmath`, `microtype`, `siunitx` (v3), `xcolor`, `booktabs`, `tabularx`, `caption`,
`enumitem`, `tcolorbox`, `fancyhdr`, `titlesec`, `authblk`, `tikz`, `hyperref`, `cleveref`.

> Note: we intentionally **do not** load `amssymb` - its `\Bbbk` definition clashes with
> `newtxmath`, which already provides the AMS symbol set used here.

## arXiv submission notes

- arXiv wants **source**, not just the PDF. Upload `main.tex` (the embedded
  `thebibliography` means you do *not* need to upload a `.bbl` or `.bib`).
- Suggested primary category: **`physics.pop-ph`** (popular/speculative physics) or
  **`cs.ET`** (emerging technologies). Consider a cross-list to `physics.app-ph`.
- Before submitting: **edit the author block and affiliation** in `main.tex` (currently a
  placeholder), and confirm you are comfortable attaching your name to a clearly-labelled
  speculative paper. arXiv moderation may reclassify or hold speculative submissions; the
  explicit epistemic framing and falsifiable predictions are there partly to survive that.

## Citation audit trail

Every reference was **independently verified during preparation** against Crossref /
publisher / arXiv / ADS records (a parallel multi-agent verification pass; DOIs and author
lists checked, several corrected). Status labels mirror the paper's epistemic ledger.

### Established (cited to support their own subsystem only)
| # | Reference | DOI / ID | Verified |
|---|-----------|----------|----------|
| Charap, Lu, He 1997 - superparamagnetic projection | IEEE T. Magn. 33(1):978 | `10.1109/20.560142` | ✅ Crossref |
| Weller & Moser 1999 - thermal-stability / trilemma constraints | IEEE T. Magn. 35(6):4423 | `10.1109/20.809134` | ✅ Crossref |
| Kryder et al. 2008 - HAMR review | Proc. IEEE 96(11):1810 | `10.1109/JPROC.2008.2004315` | ✅ Crossref |
| Challener et al. 2009 - near-field-transducer HAMR demo | Nat. Photon. 3:220 | `10.1038/nphoton.2009.26` | ✅ Crossref |
| White, Adams, Bu 2000 - SONOS / charge-trap review | IEEE Circ. Dev. 16(4):22 | `10.1109/101.857747` | ✅ |
| Tanaka et al. 2007 - BiCS 3D-NAND "punch & plug" | 2007 Symp. VLSI Tech. | `10.1109/VLSIT.2007.4339708` | ✅ |
| Goda 2020 - 3D NAND scaling | IEEE T. Electron Dev. 67(4):1373 | `10.1109/TED.2020.2968079` | ✅ (DOI corrected) |
| Ovshinsky 1968 - reversible switching in chalcogenides | PRL 21(20):1450 | `10.1103/PhysRevLett.21.1450` | ✅ |
| Wuttig & Yamada 2007 - PCM for storage | Nat. Mater. 6(11):824 | `10.1038/nmat2009` | ✅ |
| Raoux, Wełnic, Ielmini 2010 - PCM review | Chem. Rev. 110(1):240 | `10.1021/cr900040x` | ✅ |
| Faraday 1831 - acoustical figures | Phil. Trans. R. Soc. 121:299 | `10.1098/rstl.1831.0018` | ✅ Crossref |
| Melde et al. 2016 - "Holograms for acoustics" | Nature 537:518 | `10.1038/nature19755` | ✅ |
| Memoli et al. 2017 - metamaterial bricks | Nat. Commun. 8:14608 | `10.1038/ncomms14608` | ✅ |
| Jiménez-Gambín et al. 2019 - holograms through skull (MHz) | PRApplied 12:014016 | `10.1103/PhysRevApplied.12.014016` | ✅ |
| Brown 2019 - phase+amplitude holograms | APL 115:053701 | `10.1063/1.5110673` | ✅ |
| Brown, Cox, Treeby 2020 - stackable holograms | APL 116:261901 | `10.1063/5.0009829` | ✅ |
| Marzo et al. 2015 - holographic acoustic tweezers | Nat. Commun. 6:8661 | `10.1038/ncomms9661` | ✅ |
| Marzo, Caleap, Drinkwater 2018 - acoustic vortices | PRL 120:044301 | `10.1103/PhysRevLett.120.044301` | ✅ |
| Collins et al. 2015 - SAW single-cell patterning | Nat. Commun. 6:8686 | `10.1038/ncomms9686` | ✅ |
| Rufo et al. 2022 - acoustofluidics review | Nat. Rev. Methods Primers 2:30 | `10.1038/s43586-022-00109-7` | ✅ |
| IEC 62127-1:2022 - hydrophone measurement standard | - | `IEC 62127-1:2022` | ✅ |
| Martin & Treeby 2019 - hydrophone repeatability | JASA 145(3):1270 | `10.1121/1.5093306` | ✅ |
| Lin et al. 2021 - deep learning for acoustic holograms | JASA 149(4):2312 | `10.1121/10.0003959` | ✅ |
| Kramer et al. 1999 - NSF sonification report | - | UNL DigitalCommons #444 | ✅ |
| Hermann, Hunt, Neuhoff 2011 - Sonification Handbook | - | ISBN 978-3-8325-2819-5 | ✅ |
| Hermann 2008 - sonification taxonomy | ICAD 2008 | - | ✅ |
| Trayford et al. 2023 - spectra sonification | RASTI 2(1):387 | `10.1093/rasti/rzad021` | ✅ |
| Smith 2024 - sonified periodic table | SMC 2024 | - | ✅ (linear scaling, *not* "overtone stretching") |
| Cowan et al. 2005 - ps memory loss in liquid water | Nature 434:199 | `10.1038/nature03383` | ✅ Crossref |

### Established - quantitative-spine revision (added 2026-06; cited for comparators, density, and freeze physics)
| # | Reference | DOI / ID | Verified |
|---|-----------|----------|----------|
| Zhang, Gecevičius, Beresna, Kazansky 2014 - 5D nanostructured-glass storage | PRL 112:033901 | `10.1103/PhysRevLett.112.033901` | ✅ Crossref |
| Lei et al. 2021 - high-speed 5D laser nanostructuring | Optica 8(11):1365 | `10.1364/OPTICA.433765` | ✅ Crossref |
| Church, Gao, Kosuri 2012 - digital information storage in DNA | Science 337:1628 | `10.1126/science.1226355` | ✅ Crossref |
| Goldman et al. 2013 - high-capacity DNA storage | Nature 494:77 | `10.1038/nature11875` | ✅ Crossref |
| Erlich & Zielinski 2017 - DNA Fountain (1.57 bits/nt; 215 PB/g) | Science 355:950 | `10.1126/science.aaj2038` | ✅ Crossref |
| Organick et al. 2018 - random access in DNA storage | Nat. Biotechnol. 36:242 | `10.1038/nbt.4079` | ✅ Crossref |
| Ceze, Nivala, Strauss 2019 - molecular DNA storage review | Nat. Rev. Genet. 20:456 | `10.1038/s41576-019-0125-3` | ✅ Crossref |
| Heanue, Bashaw, Hesselink 1994 - volume holographic storage | Science 265:749 | `10.1126/science.265.5173.749` | ✅ Crossref |
| Coufal, Psaltis, Sincerbox 2000 - *Holographic Data Storage* | Springer | `10.1007/978-3-540-47864-5` | ✅ Crossref |
| Osborne 1939 - heat of fusion of ice (333.5 J/g) | J. Res. NBS 23:643 | NIST JRES (no Crossref DOI) | ✅ NIST archive |
| Wagner & Pruß 2002 - IAPWS-95 water properties | JPCRD 31:387 | `10.1063/1.1461829` | ✅ Crossref |
| Brüggeller & Mayer 1980 - complete vitrification of pure water | Nature 288:569 | `10.1038/288569a0` | ✅ Crossref |
| Schmidt et al. 2025 - critical cooling rate for vitrification (6.4×10⁶ K/s) | PRR 7:013095 | `10.1103/PhysRevResearch.7.013095` | ✅ Crossref |
| Shibkov et al. 2003 - dendritic ice growth morphology | Physica A 319:65 | `10.1016/S0378-4371(02)01517-0` | ✅ Crossref |
| Xu et al. 2016 - ice growth rate / supercooled-water diffusivity | PNAS 113:14921 | `10.1073/pnas.1611395114` | ✅ Crossref |
| Horowitz 2014 - computing's energy problem (pJ/bit benchmark) | ISSCC 2014:10 | `10.1109/ISSCC.2014.6757323` | ✅ Crossref |

> **Reliability flags carried into the text.** The 5D-glass "360 TB / 13.8 Gyr / 190 °C"
> figures originate in a 2016 Southampton press release, not the peer-reviewed PRL (which
> states "hundreds of TB," ~10²⁰-yr decay, 1000 °C stability); the paper quotes the
> peer-reviewed numbers and the press-derived ~26 TB/cm³ is labelled as such. The
> structured-water density figures (water-pearl/chain dimensions, ~19 TB/µL) are presented
> explicitly as the **contested theory's own internal accounting**, carried forward only to
> show the acoustic-diffraction read limit dominates regardless - they carry no endorsement.

### Contested / minority (cited *with* their critical counter-sources)
| Reference | DOI / ID | Status |
|-----------|----------|--------|
| Hameroff & Penrose 2014 - Orch-OR | `10.1016/j.plrev.2013.08.002` | contested hypothesis |
| Tegmark 2000 - decoherence rebuttal | `10.1103/PhysRevE.61.4194` | skeptical counterpoint |
| Pollack 2013 - "Fourth Phase of Water" | ISBN 978-0-9626895-4-3 | self-published, minority |
| Elton et al. 2020 - critical EZ review | `10.3390/ijms21145041` | the critical counterpoint |

### Refuted / esoteric (cited *only* to label the fringe premise)
| Reference | DOI / ID | Status |
|-----------|----------|--------|
| Davenas/Benveniste 1988 - "memory of water" | `10.1038/333816a0` | **refuted** |
| Maddox, Randi, Stewart 1988 - on-site investigation | `10.1038/334287a0` | the refutation |
| Montagnier et al. 2009 - EM/DNA revival | `10.1007/s12539-009-0036-7` | non-reproduced fringe |
| Russell 1926 - *The Universal One* | archive.org facsimile | esoteric/historical only |

**Integrity guardrail (applied in the text):** the verification pass explicitly warned
against "laundering" mainstream credibility onto the speculative acousto-cymatic
conjecture. Accordingly, every established citation is used to support *only its own
subsystem*, and the paper repeatedly states that HAMR/PCM/holography results provide **no**
evidence for the central freeze-records-an-acoustic-field claim (Assumption 3), which is
flagged as the authors' own conjecture and the single load-bearing risk.
