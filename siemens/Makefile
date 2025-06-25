#!/usr/bin/make -f


# Make calibration board w/ symmetric circles


SHELL := /bin/bash

_PROJECT := siemens_star
_ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SPOKES := 45
WIDTH := 215.9
HEIGHT := 279.4

# default options for latexmk for pdflatex
# https://tex.stackexchange.com/questions/205231/can-i-pass-latex-commands-to-latexmk-instead-of-a-filename
_pdflatex_def := pdflatex %O -interaction=nonstopmode -synctex=1

# pass options to geometry via pdflatex flag b/c we need this before \begin{document}
_geometry_opts := \PassOptionsToPackage{paperwidth=$(WIDTH)mm,paperheight=$(HEIGHT)mm}{geometry}


.PHONY: all clean
.PHONY: $(_PROJECT).pdf  # delegate to latexmk b/c it needs run more than once for LaTeX

# 		-pdflatex='pdflatex -interaction=nonstopmode -shell-escape "\newcommand\nSpokes{$(SPOKES)} \include{$(_PROJECT)}"' \

.PHONY: all
all: $(_PROJECT).pdf $(_PROJECT).svg $(_PROJECT).png


$(_PROJECT).pdf:
	max_print_line=96 \
	latexmk -pdf \
		-pdflatex='$(_pdflatex_def) "$(_geometry_opts)\input{%S}"' \
		$(_PROJECT)

.PHONY: clean
clean:
	latexmk -C $(_PROJECT).tex


$(_PROJECT).svg: $(_PROJECT).pdf
	pdf2svg $< $@


$(_PROJECT).png: $(_PROJECT).pdf
	# -r is DPI, experimental
	pdftoppm $< $(basename $@) -png -singlefile -r 512
