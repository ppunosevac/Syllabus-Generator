pdf: 
	pdflatex giftlatex.tex
	bibtex giftlatex
	pdflatex giftlatex.tex
all: 
	latex giftlatex.tex
	latex giftlatex.tex
	bibtex giftlatex
	latex giftlatex.tex
	latex giftlatex.tex
	dvips -o giftlatex.ps giftlatex.dvi
	ps2pdf -sPAPERSIZE=a4 -DMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true giftlatex.ps giftlatex.pdf

clean:
	rm -f *.log *.dvi *.aux *.bbl *.blg giftlatex.pdf *.ps

epstopdf:
	epstopdf automatic.eps
	epstopdf EditingQuiz.eps
	epstopdf gift2html.eps
	epstopdf gift2ps.eps
	epstopdf importFromfile.eps
	epstopdf importing2questions.eps
	epstopdf methodology.eps

addpdf:
	svn add automatic.pdf
	svn add EditingQuiz.pdf
	svn add gift2html.pdf
	svn add gift2ps.pdf
	svn add importFromfile.pdf
	svn add importing2questions.pdf
	svn add methodology.pdf

dist: pdf
	tar cvzf giftlatex.tar.gz giftlatex.tex giftlatex.bib makefile *.pdf pracjourn.cls abstract* *bio.tex emailsandweb.png
	zip  giftlatex.zip giftlatex.tex giftlatex.bib makefile *.pdf pracjourn.cls abstract* *bio.tex emailsandweb.png

test: dist
	   rm -fR /tmp/practex
	   mkdir /tmp/practex
	   cp giftlatex.zip /tmp/practex/
	   cd /tmp/practex/ ;\
	      unzip giftlatex.zip ;\
	      make pdf;\
	      make pdf
