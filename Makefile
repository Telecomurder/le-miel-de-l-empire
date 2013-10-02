SRC = $(wildcard fiches/*.tex)

all: $(SRC:%.tex=%.pdf)

%.pdf: %.tex
	latexmk -pdf $^

clean:
	rm -f *.aux *.log *.fdb_latexmk *.fls

mrproper: clean
	rm -f *.pdf

.PHONY: clean mrproper
