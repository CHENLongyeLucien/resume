# CV — LaTeX

Mon CV rédigé en LaTeX, avec sa version compilée en PDF.

📄 **[Voir le CV (PDF)](longye_chen_resume.pdf)**

## Contenu du dépôt

| Fichier | Rôle |
|---|---|
| [`longye_chen_resume.tex`](longye_chen_resume.tex) | Source LaTeX du CV |
| [`longye_chen_resume.pdf`](longye_chen_resume.pdf) | CV compilé |
| [`build.ps1`](build.ps1) | Script de compilation (Windows / PowerShell) |
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

**En ligne** : importer `longye_chen_resume.tex` dans [Overleaf](https://www.overleaf.com/) puis cliquer sur *Recompile*.

### Installer Tectonic

Télécharger l'exécutable depuis les [releases officielles](https://github.com/tectonic-typesetting/tectonic/releases),
le placer dans le `PATH` (ou dans `%LOCALAPPDATA%\Programs\tectonic\`). Les paquets LaTeX nécessaires
sont téléchargés automatiquement à la première compilation.

## Personnaliser

- Les coordonnées sont dans le bloc `HEADING` de `longye_chen_resume.tex`.
- Chaque section (Education, Experience, Projects, Technical Skills) utilise les commandes
  `\resumeSubheading`, `\resumeItem`, `\resumeProjectHeading`.
- Plusieurs polices sont proposées en commentaire dans la section `FONT OPTIONS`.

## Crédits

Basé sur le modèle [Jake's Resume](https://github.com/jakegut/resume) de Jake Gutierrez,
lui-même dérivé de [sb2nov/resume](https://github.com/sb2nov/resume). Distribué sous licence MIT.
