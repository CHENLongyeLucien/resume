# CV — LaTeX

Mon CV rédigé en LaTeX, en anglais et en français, avec les versions compilées en PDF.

📄 **[Voir le CV en anglais (PDF)](longye_chen_resume.pdf)** · **[Voir le CV en français (PDF)](longye_chen_resume_fr.pdf)**

## Contenu du dépôt

| Fichier | Rôle |
|---|---|
| [`longye_chen_resume.tex`](longye_chen_resume.tex) | Source LaTeX du CV (anglais) |
| [`longye_chen_resume.pdf`](longye_chen_resume.pdf) | CV compilé (anglais) |
| [`longye_chen_resume_fr.tex`](longye_chen_resume_fr.tex) | Source LaTeX du CV (français) |
| [`longye_chen_resume_fr.pdf`](longye_chen_resume_fr.pdf) | CV compilé (français) |
| [`build.ps1`](build.ps1) | Script de compilation des deux versions (Windows / PowerShell) |
| [`Makefile`](Makefile) | Compilation sous Linux / macOS / Git Bash |
| [`LICENSE`](LICENSE) | Licence MIT du modèle d'origine |

## Compiler

Le document se compile avec **Tectonic** (recommandé), **pdfLaTeX**, **XeLaTeX** ou **LuaLaTeX**.

**Windows (PowerShell)**

```powershell
.\build.ps1
```

**Linux / macOS / Git Bash**

```bash
make            # utilise tectonic
make TEX=pdflatex
```

**En ligne** : importer `longye_chen_resume.tex` ou `longye_chen_resume_fr.tex` dans [Overleaf](https://www.overleaf.com/) puis cliquer sur *Recompile*.

### Installer Tectonic

Télécharger l'exécutable depuis les [releases officielles](https://github.com/tectonic-typesetting/tectonic/releases),
le placer dans le `PATH` (ou dans `%LOCALAPPDATA%\Programs\tectonic\`). Les paquets LaTeX nécessaires
sont téléchargés automatiquement à la première compilation.

## Personnaliser

- Les deux fichiers `.tex` ont la même structure : une modification de contenu doit être faite
  dans les deux versions.
- Les coordonnées sont en haut du document, juste après `\begin{document}`.
- Les sections utilisent les commandes `\resumeOneLineHeading` (expériences),
  `\resumeProjectEntry` (projets), `\resumeDegreeLine` (diplômes) et `\resumeItem` (puces).
- La version française utilise `babel` en français (espaces avant « : », dates en français).
- Plusieurs polices sont proposées en commentaire dans la section `FONT OPTIONS`.

## Crédits

Basé sur le modèle [Jake's Resume](https://github.com/jakegut/resume) de Jake Gutierrez,
lui-même dérivé de [sb2nov/resume](https://github.com/sb2nov/resume). Distribué sous licence MIT.
