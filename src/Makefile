LATEX_NAME = cat-high-perf-teams

all: pdflatex lint

pdflatex:
	pdflatex $(LATEX_NAME)
	pdflatex $(LATEX_NAME)

lint:
	chktex -W # Print version information.
	chktex -q -n 1 -n 6 -n 12 -n 13 -n 15 -n 38 $(LATEX_NAME).tex 2>/dev/null | tee lint.out

clean:
	rm -f $(LATEX_NAME).aux $(LATEX_NAME).bbl $(LATEX_NAME).blg $(LATEX_NAME).dvi $(LATEX_NAME).log $(LATEX_NAME).pdf $(LATEX_NAME).ps $(LATEX_NAME).toc $(LATEX_NAME).synctex.gz
	rm -f lint.out
