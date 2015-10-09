OUTDIR=out
MODE=nonstopmode
MAIN=main.tex

all:
	latexmk -shell-escape -xelatex -bibtex -pvc -interaction=$(MODE) -outdir=$(OUTDIR) -auxdir=$(OUTDIR) -f $(MAIN)

pdf:
	latexmk -shell-escape -xelatex -bibtex -outdir=$(OUTDIR) -auxdir=$(OUTDIR) -f $(MAIN)

travis:
	latexmk -shell-escape -xelatex -bibtex -f $(MAIN)

clean:
	latexmk -outdir=$(OUTDIR) -C
