SRC = $(wildcard fiches/*.tex)

all: $(SRC:%.tex:%.pdf)

%.pdf: %.tex
	latexmk -pdf $^

clean:
	rm -f *.aux *.log *.pdf *.fdb_latexmk *.fls

.PHONY: clean
