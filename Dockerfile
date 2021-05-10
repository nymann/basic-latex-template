FROM texlive/texlive:latest

WORKDIR /doc/
COPY fonts/ fonts/
COPY images/ images/
COPY report.tex .
COPY chapters/ chapters/

RUN latexmk -shell-escape -pdf -lualatex report.tex
