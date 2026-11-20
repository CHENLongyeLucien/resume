# Compile longye_chen_resume.tex en longye_chen_resume.pdf.
# Utilise Tectonic s'il est disponible, sinon pdflatex (MiKTeX / TeX Live).
Set-Location $PSScriptRoot

$tectonic = (Get-Command tectonic -ErrorAction SilentlyContinue).Source
if (-not $tectonic) {
    $local = Join-Path $env:LOCALAPPDATA "Programs\tectonic\tectonic.exe"
    if (Test-Path $local) { $tectonic = $local }
}

if ($tectonic) {
    & $tectonic longye_chen_resume.tex
} elseif (Get-Command pdflatex -ErrorAction SilentlyContinue) {
    pdflatex -interaction=nonstopmode longye_chen_resume.tex
} else {
    Write-Error "Aucun compilateur LaTeX trouve (installer Tectonic ou MiKTeX)."
    exit 1
}
exit $LASTEXITCODE
