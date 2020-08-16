#!/bin/bash

pdflatex -synctex=1 -interaction=nonstopmode ebook.tex
pdflatex -synctex=1 -interaction=nonstopmode ebook.tex
pdflatex -synctex=1 -interaction=nonstopmode ebook.tex
pdflatex -synctex=1 -interaction=nonstopmode ebook.tex

rm -f ebook.aux
rm -f ebook.out
rm -f ebook.synctex.gz
rm -f ebook.toc
rm -f ebook.log

