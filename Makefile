# This is a LaTeX Makefile created by Predrag Punosevac#
########################################################
SHELL = /bin/sh
.SUFFIXES : .tex .dvi .ps .pdf

# FILE = ${SRC}
FILE = syllabus

LATEX = /usr/local/bin/latex
BIBTEX = /usr/local/bin/bibtex
XDVI = /usr/local/bin/xdvi
DVIPS = /usr/local/bin/dvips
GVU = /usr/local/bin/gvu
PS2PDF = /usr/local/bin/ps2pdf
XPDF = /usr/local/bin/xpdf 
LPR = /usr/bin/lpr

DVI = ${FILE}.dvi
PS = ${FILE}.ps
PDF = ${FILE}.pdf



.tex.dvi :
	${LATEX} ${FILE}.tex
	${LATEX} ${FILE}.tex
.dvi.ps :
	${DVIPS} ${DVI}
.ps.pdf :
	${PS2PDF} ${PS}



bib :   
	${LATEX} ${FILE}.tex
	${LATEX} ${FILE}.tex
	${BIBTEX} ${FILE}
dvi : bib
	${LATEX} ${FILE}.tex
	${LATEX} ${FILE}.tex
dvi-view : dvi
	${XDVI} ${DVI}
ps : dvi
	${DVIPS} ${DVI}
ps-view : ps
	${GVU} ${PS}
pdf : ps
	${PS2PDF} ${PS}
pdf-view : pdf
	${XPDF} ${PDF} 
print : ${PS}
	${LPR} ${PS}



# Various cleaning options
clean :
	/bin/rm -f  *.log *.aux *.dvi *.bbl *.blg *.bm *.toc *.out
clean-ps : clean
	/bin/rm -r *.ps
clean-all : clean-ps
	/bin/rm -f *.pdf
