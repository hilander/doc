
.PHONY:all

all: final

final: final.tex
		pdflatex final.tex && makeindex final.idx && bibtex final.aux && pdflatex final.tex
