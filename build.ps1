# Compile les deux versions du CV :
#   longye_chen_resume.tex    -> longye_chen_resume.pdf    (anglais)
#   longye_chen_resume_fr.tex -> longye_chen_resume_fr.pdf (francais)
# Utilise Tectonic s'il est disponible, sinon pdflatex (MiKTeX / TeX Live).
Set-Location $PSScriptRoot

$sources = @("longye_chen_resume.tex", "longye_chen_resume_fr.tex")

$tectonic = (Get-Command tectonic -ErrorAction SilentlyContinue).Source
if (-not $tectonic) {
    $local = Join-Path $env:LOCALAPPDATA "Programs\tectonic\tectonic.exe"
    if (Test-Path $local) { $tectonic = $local }
}

if (-not $tectonic -and -not (Get-Command pdflatex -ErrorAction SilentlyContinue)) {
    Write-Error "Aucun compilateur LaTeX trouve (installer Tectonic ou MiKTeX)."
    exit 1
}

$status = 0
foreach ($src in $sources) {
    if ($tectonic) {
        & $tectonic $src
    } else {
        pdflatex -interaction=nonstopmode $src
    }
    if ($LASTEXITCODE -ne 0) { $status = $LASTEXITCODE }
}
exit $status
