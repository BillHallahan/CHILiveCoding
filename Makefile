OUT = main
GRAY = gray

all: $(OUT).pdf	# $(GRAY).pdf

$(OUT).pdf: $(wildcard *.tex */*.tex */*.bib */*.bbl */*.cls */figs/*.eps)
	pdflatex $(OUT)
	bibtex $(OUT)
	pdflatex $(OUT)
	pdflatex $(OUT)

bib:
	bibtex $(OUT)
	pdflatex $(OUT)

clean:
	rm -f *~ *.aux *.dvi *.bbl *.blg *.log *.pdf

clena:
	rm -f *~ *.aux *.dvi *.bbl *.blg *.log *.pdf

celan:
	rm -f *~ *.aux *.dvi *.bbl *.blg *.log *.pdf

new:
	latexmk -pdf main2.tex
