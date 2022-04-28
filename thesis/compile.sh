#!/bin/bash

set -e

if [ -z $1 ]; then
    echo ERROR, please specify folder
    echo Example: ./compile.sh english
    exit
fi

echo Target: $1/thesis.tex

cd $1

pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis
