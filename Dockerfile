FROM texlive/texlive:latest

WORKDIR /doc/
COPY images/ images/
COPY report.tex .
COPY chapters/ chapters/

RUN latexmk -pdf -pdflatex report.tex
