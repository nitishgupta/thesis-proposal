.SUFFIXES: .tex .in .dvi .ps .pdf
all: main.pdf
.tex.pdf:
	pdflatex $<
	-bibtex $*
	pdflatex $<
	pdflatex $<
	cp main.pdf proposal.pdf
01-introduction.pdf: 01-introduction.pdf
	pdflatex sections/01-introduction.tex
	bibtex 01-introduction.aux
	pdflatex sections/01-introduction.tex
	pdflatex sections/01-introduction.tex
02-nmn-drop.pdf: 02-nmn-drop.pdf
	pdflatex sections/02-nmn-drop.tex
	bibtex 02-nmn-drop.aux
	pdflatex sections/02-nmn-drop.tex
	pdflatex sections/02-nmn-drop.tex
03-nmn-interpret.pdf: 03-nmn-interpret.pdf
	pdflatex sections/03-nmn-interpret.tex
	bibtex 03-nmn-interpret.aux
	pdflatex sections/03-nmn-interpret.tex
	pdflatex sections/03-nmn-interpret.tex
04-denotation.pdf: 04-denotation.pdf
	pdflatex sections/04-denotation.tex
	bibtex 04-denotation.aux
	pdflatex sections/04-denotation.tex
	pdflatex sections/04-denotation.tex
05-future.pdf: 05-future.pdf
	pdflatex sections/05-future.tex
	bibtex 05-future.aux
	pdflatex sections/05-future.tex
	pdflatex sections/05-future.tex
clean:
	rm -f *.aux *.dvi *.ps *.bbl *.blg *.out *.log *.toc *.lof *.lot *.nav *.snm *.bak *~ *.acn *.ist *.syg *.acn *.glsdefs *.ist *.syg main.pdf 01-introduction.pdf 05-future.pdf 02-nmn-drop.pdf 03-nmn-interpret.pdf 04-denotation.pdf
proposal:
	git add proposal.pdf; git commit -m "update proposal pdf"; git push origin master
