SRC_CHARACTER_SHEETS=$(wildcard fiches/*.tex)
SRC_GM_RESSOURCES=$(wildcard ressources/mj/*.tex)
SRC_PLAYER_RESSOURCES=$(wildcard ressources/joueurs/*.tex)

all: sheets gm_ressources player_ressources

sheets: $(SRC_CHARACTER_SHEETS:%.tex=%.pdf)

gm_ressources: $(SRC_GM_RESSORUCES:%.tex=%.pdf)

player_ressources: $(SRC_PLAYER_RESSOURCES:%.tex=%.pdf)

%.pdf: %.tex
	latexmk -pdf $^

clean:
	latexmk -c $(SRC)

mrproper:
	latexmk -C $(SRC)

.PHONY: all clean mrproper
