# Compile main.tex en main.pdf (Linux / macOS / Git Bash)
TEX ?= tectonic

all: main.pdf

main.pdf: main.tex
	$(TEX) main.tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv

.PHONY: all clean
