# Compile main.tex en main.pdf.
# Utilise Tectonic s'il est disponible, sinon pdflatex (MiKTeX / TeX Live).
Set-Location $PSScriptRoot

$tectonic = (Get-Command tectonic -ErrorAction SilentlyContinue).Source
if (-not $tectonic) {
    $local = Join-Path $env:LOCALAPPDATA "Programs\tectonic\tectonic.exe"
    if (Test-Path $local) { $tectonic = $local }
}

if ($tectonic) {
    & $tectonic main.tex
} elseif (Get-Command pdflatex -ErrorAction SilentlyContinue) {
    pdflatex -interaction=nonstopmode main.tex
} else {
    Write-Error "Aucun compilateur LaTeX trouve (installer Tectonic ou MiKTeX)."
    exit 1
}
exit $LASTEXITCODE
