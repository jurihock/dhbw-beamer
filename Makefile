# Summary:      A handy makefile for LaTeX
# Author:       Juergen Hock <http://jurihock.de>
# Version:      2013/02/01
# Dependencies: latexmk (texlive), make, rubber, xdg-utils

# First, define the $MAINFILE to be compiled and then
# fix the backend (pdflatex or xelatex) in default actions.
# All temporary files are keeped in $TEMPDIR, but
# the generated PDF file is copied into the initial directory.
# Optional specify the $PATH containing your LaTeX distribution.

# PATH := /usr/local/texlive/20xx/bin/x86_64-linux:$(PATH)

MAINFILE = Index
TEMPDIR  = ~$(MAINFILE)

default: pdflatex

pdflatex:
	@ latexmk -pdf -outdir=$(TEMPDIR) $(MAINFILE).tex
	@ cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

xelatex:
	@ latexmk -pdf -xelatex -outdir=$(TEMPDIR) $(MAINFILE).tex
	@ cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

preview:
	@ xdg-open $(MAINFILE).pdf &> /dev/null

log:
	@ cd $(TEMPDIR) && rubber-info $(MAINFILE).log

clean:
	@ rm -rf -v $(TEMPDIR)