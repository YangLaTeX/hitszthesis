# Makefile for hitszthesis

# Compiling method: latexmk/xelatex/pdflatex
METHOD = xelatex
# Set opts for latexmk if you use it
LATEXMKOPTS = -xelatex
# Set opts for xelatex if you use it
XELATEXOPTS = -shell-escape
# Basename of thesis
THESISMAIN = main

PACKAGE=hitszthesis
SOURCES=$(PACKAGE).ins $(PACKAGE).dtx
THESISCONTENTS=$(THESISMAIN).tex front/*.tex body/*.tex back/*.tex $(FIGURES) *.bst
# NOTE: update this to reflect your local file types.
FIGURES=$(wildcard figures/*.eps figures/*.pdf)
BIBFILE=*.bib
CLSFILES=dtx-style.sty $(PACKAGE).cls $(PACKAGE).ist h$(PACKAGE).cfg

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
	OPEN = start
else
	RM = rm -f
	OPEN = open
endif

.PHONY: all clean distclean dist thesis wordcount viewthesis doc dev pub viewdoc cls check FORCE_MAKE

all: doc thesis

cls: $(CLSFILES)

$(CLSFILES): $(SOURCES)
	latex $(PACKAGE).ins

viewdoc: doc
	$(OPEN) $(PACKAGE).pdf

doc: $(PACKAGE).pdf

wordcount : $(THESISMAIN).tex
	@texcount $< -inc -chinese

viewthesis: thesis
	$(OPEN) $(THESISMAIN).pdf

thesis: $(THESISMAIN).pdf

ifeq ($(METHOD),latexmk)

LATEXCMD := $(METHOD) $(LATEXMKOPTS)

$(PACKAGE).pdf: $(CLSFILES) FORCE_MAKE
	$(LATEXCMD) $(LATEXMKOPTS) $(PACKAGE).dtx

$(THESISMAIN).pdf: $(CLSFILES) FORCE_MAKE
	$(LATEXCMD) $(LATEXMKOPTS) $(THESISMAIN)

else ifeq ($(METHOD),xelatex)

LATEXCMD := $(METHOD) $(XELATEXOPTS)

$(PACKAGE).pdf: $(CLSFILES)
	$(LATEXCMD) $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	makeindex -s gglo.ist -o $(PACKAGE).gls $(PACKAGE).glo
	$(LATEXCMD) $(PACKAGE).dtx
	$(LATEXCMD) $(PACKAGE).dtx

$(THESISMAIN).idx: $(THESISMAIN).bbl
	$(LATEXCMD) $(THESISMAIN)
	$(LATEXCMD) $(THESISMAIN)


$(THESISMAIN)_china.idx : $(CLSFILES) $(THESISMAIN).bbl $(THESISMAIN).idx
	splitindex $(THESISMAIN) -- -s $(PACKAGE).ist

$(THESISMAIN)_english.ind $(THESISMAIN)_china.ind $(THESISMAIN)_english.idx : $(THESISMAIN)_china.idx

$(THESISMAIN).pdf: $(CLSFILES) $(THESISCONTENTS) $(THESISMAIN)_china.ind $(THESISMAIN)_china.idx $(THESISMAIN)_english.ind $(THESISMAIN)_english.idx $(THESISMAIN).bbl
	$(LATEXCMD) $(THESISMAIN)
	splitindex $(THESISMAIN) -- -s $(PACKAGE).ist
	$(LATEXCMD) $(THESISMAIN)

$(THESISMAIN).bbl: $(BIBFILE)
	$(LATEXCMD) $(THESISMAIN)
	-bibtex $(THESISMAIN)
	$(RM) $(THESISMAIN).pdf

else
$(error Unknown METHOD: $(METHOD))

endif

dev: doc thesis clean

pub: doc thesis cleanall

clean:
	latexmk -c $(PACKAGE).dtx
	latexmk -c $(THESISMAIN)
	-@$(RM) *~ *.idx *.ind *.ilg *.thm *.toe *.bbl

cleanall: clean
	-@$(RM) $(PACKAGE).pdf $(THESISMAIN).pdf

distclean: cleanall
	-@$(RM) $(CLSFILES)
	-@$(RM) -r dist

check: FORCE_MAKE
	ag 'Dissertation Template for Harbin Institute of Technology, ShenZhen|\\def\\version|"version":' hitszthesis.dtx package.json

dist: all
	@if [ -z "$(version)" ]; then \
		echo "Usage: make dist version=[x.y.z | ctan]"; \
	else \
		npm run build -- --version=$(version); \
	fi
