# ACPCM preprint — build helpers
# Prefers tectonic (self-contained); falls back to pdflatex if unavailable.

MAIN := main

.PHONY: all pdf clean view site

all: pdf

pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	@if command -v tectonic >/dev/null 2>&1; then \
		echo ">> Building with tectonic"; \
		tectonic $(MAIN).tex; \
	else \
		echo ">> tectonic not found; building with pdflatex (2 passes)"; \
		pdflatex -interaction=nonstopmode $(MAIN).tex && \
		pdflatex -interaction=nonstopmode $(MAIN).tex; \
	fi
	@$(MAKE) --no-print-directory site

# Sync the compiled PDF + LaTeX source into /docs (GitHub Pages root) so the
# site can embed the compiled paper and link the source directly.
site:
	@cp $(MAIN).pdf docs/$(MAIN).pdf && cp $(MAIN).tex docs/$(MAIN).tex
	@echo ">> synced $(MAIN).pdf + $(MAIN).tex into docs/"

view: pdf
	@open $(MAIN).pdf 2>/dev/null || xdg-open $(MAIN).pdf 2>/dev/null || echo "open $(MAIN).pdf manually"

clean:
	@rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc $(MAIN).bbl $(MAIN).blg \
		$(MAIN).fls $(MAIN).fdb_latexmk $(MAIN).synctex.gz
	@echo ">> cleaned intermediate files (kept $(MAIN).pdf)"

distclean: clean
	@rm -f $(MAIN).pdf
	@echo ">> removed $(MAIN).pdf"
