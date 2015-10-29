#! /bin/bash
evince mqp-proposal-sjkelly.pdf &
while true
do
inotifywait proposal.tex
pdflatex -jobname=mqp-proposal-sjkelly proposal.tex
bibtex mqp-proposal-sjkelly.aux
pdflatex -jobname=mqp-proposal-sjkelly proposal.tex
done
