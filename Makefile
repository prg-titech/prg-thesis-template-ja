MAKEFLAGS += --silent

LATEX := platex
LFLAGS := -halt-on-error -synctex=1 -kanji=UTF8
BIBTEX := pbibtex
DVIPDF := dvipdfmx

.SUFFIXES: .bib .tex .dvi .pdf

all: thesis

thesis: thesis.tex
	$(LATEX) $(LFLAGS) thesis
	-$(BIBTEX) thesis
	$(LATEX) $(LFLAGS) thesis
	$(LATEX) $(LFLAGS) thesis
	$(DVIPDF) thesis

clean:
	rm -f *.pdf *.out *.aux *.bbl *.blg *.log *.toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.lot *.dvi *.synctex.gz

.PHONY: all clean
