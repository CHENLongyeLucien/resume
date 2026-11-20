# Compile longye_chen_resume.tex en longye_chen_resume.pdf (Linux / macOS / Git Bash)
TEX ?= tectonic

all: longye_chen_resume.pdf

longye_chen_resume.pdf: longye_chen_resume.tex
	$(TEX) longye_chen_resume.tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv

.PHONY: all clean
