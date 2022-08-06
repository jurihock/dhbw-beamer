MAINFILE = Index
TEMPDIR  = ~$(MAINFILE)

default: pdflatex

pdflatex:
	@latexmk -interaction=nonstopmode -pdf -outdir=$(TEMPDIR) $(MAINFILE).tex
	@cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

xelatex:
	@latexmk -interaction=nonstopmode -pdf -xelatex -outdir=$(TEMPDIR) $(MAINFILE).tex
	@cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

clean:
	@rm -rf -v $(TEMPDIR)
