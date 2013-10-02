SRC = $(wildcard fiches/*.tex)

all: $(SRC:%.tex=%.pdf)

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -c $(SRC)

mrproper:
	latexmk -C $(SRC)

.PHONY: all clean mrproper
