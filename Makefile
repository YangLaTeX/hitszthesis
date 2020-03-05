# Makefile for hitszthesis

PACKAGE = hitszthesis
THESIS  = main
SPINE   = spine

SOURCES = $(PACKAGE).ins $(PACKAGE).dtx
CLSFILE = dtx-style.sty $(PACKAGE).cls

LATEXMK = latexmk

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all all-dev wordcount clean distclean dist thesis viewthesis spine viewspine doc viewdoc cls check save savepdf test FORCE_MAKE

thesis: $(THESIS).pdf

all: thesis spine

dev: doc all clean

pub: doc all cleanall

cls: $(CLSFILE)

$(CLSFILE): $(SOURCES)
	xetex $(PACKAGE).ins

doc: $(PACKAGE).pdf

spine: $(SPINE).pdf

$(PACKAGE).pdf: cls FORCE_MAKE
	$(LATEXMK) $(PACKAGE).dtx

$(THESIS).pdf: cls FORCE_MAKE
	$(LATEXMK) $(THESIS)

$(SPINE).pdf: cls FORCE_MAKE
	$(LATEXMK) $(SPINE)

viewdoc: doc
	$(LATEXMK) -pv $(PACKAGE).dtx

viewthesis: thesis
	$(LATEXMK) -pv $(THESIS)

viewspine: spine
	$(LATEXMK) -pv $(SPINE)

save:
	bash testfiles/save.sh

savepdf:
	bash testfiles/save-pdf.sh

test:
	l3build check

wordcount : $(THESIS).tex
	@texcount $< -inc -chinese

clean:
	$(LATEXMK) -c $(PACKAGE).dtx $(THESIS) $(SPINE)

cleanall: clean
	-@$(RM) $(CLSFILE)

distclean: cleanall
	-@$(RM) -r dist

check: FORCE_MAKE
ifeq ($(version),)
	@echo "Error: version missing: \"make [check|dist] version=X.Y\""; exit 1
else
	@[[ $(shell grep -E -c '$(version) A Bachelor Thesis Template for Harbin Institute of Technology, ShenZhen|\\def\\version\{$(version)\}' hitszthesis.dtx) -eq 3 ]] || (echo "update version in hitszthesis.dtx before release"; exit 1)
	@[[ $(shell grep -E -c '"version": "$(version)"' package.json) -eq 1 ]] || (echo "update version in package.json before release"; exit 1)
endif

dist: check all-dev
	npm run build -- --version=$(version)