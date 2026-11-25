# Compile les deux versions du CV (Linux / macOS / Git Bash)
#   longye_chen_resume.tex    -> longye_chen_resume.pdf    (anglais)
#   longye_chen_resume_fr.tex -> longye_chen_resume_fr.pdf (francais)
TEX ?= tectonic

all: longye_chen_resume.pdf longye_chen_resume_fr.pdf

%.pdf: %.tex
	$(TEX) $<

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv

.PHONY: all clean
