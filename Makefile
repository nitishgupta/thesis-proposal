.SUFFIXES: .tex .in .dvi .ps .pdf
all: main.pdf
.tex.pdf:
	pdflatex $<
	-bibtex $*
	pdflatex $<
	pdflatex $<
01-introduction.pdf: 01-introduction.pdf
	pdflatex sections/01-introduction.tex
	bibtex 01-introduction.aux
	pdflatex sections/01-introduction.tex
	pdflatex sections/01-introduction.tex
05-future.pdf: 05-future.pdf
	pdflatex sections/05-future.tex
	bibtex 05-future.aux
	pdflatex sections/05-future.tex
	pdflatex sections/05-future.tex
clean:
	rm -f *.aux *.dvi *.ps *.bbl *.blg *.out *.log *.toc *.lof *.lot *.nav *.snm *.bak *~ *.acn *.ist *.syg *.acn *.glsdefs *.ist *.syg main.pdf 01-introduction.pdf 05-future.pdf
