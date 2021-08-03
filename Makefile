MAINFILE = Index
TEMPDIR  = ~$(MAINFILE)

default: pdflatex

pdflatex:
	@latexmk -pdf -outdir=$(TEMPDIR) $(MAINFILE).tex
	@cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

xelatex:
	@latexmk -pdf -xelatex -outdir=$(TEMPDIR) $(MAINFILE).tex
	@cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

clean:
	@rm -rf -v $(TEMPDIR)
