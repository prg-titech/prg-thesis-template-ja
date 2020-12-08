MAKEFLAGS += --silent

APP := thesis
SUBDIRS := 

LATEX := platex
LFLAGS := -halt-on-error -synctex=1 -kanji=UTF8
BIBTEX := pbibtex
DVIPDF := dvipdfmx

.SUFFIXES: .bib .tex .dvi .pdf

all: $(APP).pdf

dvi: $(APP).dvi
pdf: $(APP).pdf

.tex.dvi:
	$(LATEX) $(LFLAGS) $(APP)
	$(BIBTEX) $(APP)
	$(LATEX) $(LFLAGS) $(APP)
	$(LATEX) $(LFLAGS) $(APP)
.dvi.pdf:
	$(DVIPDF) $(APP)

clean: 
	rm -f *.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
	$(MAKE) -C $? clean

distclean:
	rm -f *.pdf *.dvi

clean-all: clean distclean

view:
	open -a Skim $(APP).pdf

.PHONY: all clean distclean clean-all $(SUBDIRS)

