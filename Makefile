SRC_CHARACTER_SHEETS=$(wildcard fiches/*.tex)
SRC_GM_RESSOURCES=$(wildcard ressources/mj/*.tex)
SRC_PLAYER_RESSOURCES=$(wildcard ressources/joueurs/*.tex)

all: sheets gm_ressources player_ressources

sheets: $(SRC_CHARACTER_SHEETS:%.tex=%.pdf)

gm_ressources: $(SRC_GM_RESSOURCES:%.tex=%.pdf)

player_ressources: $(SRC_PLAYER_RESSOURCES:%.tex=%.pdf)

%.pdf: %.tex
	latexmk -pdf $^

clean:
	latexmk -c $(SRC_CHARACTER_SHEETS) $(SRC_PLAYER_RESSOURCES) \
	$(SRC_GM_RESSOURCES)

mrproper:
	latexmk -C $(SRC_CHARACTER_SHEETS) $(SRC_PLAYER_RESSOURCES) \
	$(SRC_GM_RESSOURCES)

.PHONY: all clean mrproper

