#! /bin/bash
evince mqp-sjkelly.pdf &
while true
do
inotifywait mqp.tex
pdflatex -jobname=mqp-sjkelly mqp.tex
bibtex mqp-sjkelly.aux
pdflatex -jobname=mqp-sjkelly mqp.tex
done
