SRC_CHARACTER_SHEETS=$(wildcard fiches/*.tex)
SRC_GM_RESSOURCES=$(wildcard ressources/mj/*.tex)
SRC_PLAYER_RESSOURCES=$(wildcard ressources/joueurs/*.tex)

OUTPUTDIR=miel-de-l-empire-documents

all: sheets gm_ressources player_ressources

sheets: $(SRC_CHARACTER_SHEETS:%.tex=%.pdf)

gm_ressources: $(SRC_GM_RESSORUCES:%.tex=%.pdf)

player_ressources: $(SRC_PLAYER_RESSOURCES:%.tex=%.pdf)

%.pdf: %.tex
	latexmk -outdir=$(OUTPUTDIR) -pdf $^

clean:
	rm -f $(OUTPUTDIR)/*.{aux,log,fdb_latexmk,fls}

mrproper: clean
	rm -f $(OUTPUTDIR)/*.pdf

.PHONY: clean mrproper
