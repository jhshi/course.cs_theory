all:
	latexmk -pdf -latex=xelatex -pv main.tex

clean:
	latexmk -C
