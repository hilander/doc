
.PHONY:all

all: final

final: final.tex
		pdflatex final.tex
