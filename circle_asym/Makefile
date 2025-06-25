# Make calibration board w/ symmetric circles

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash
_PROJECT := circle_asym


.PHONY: all
all: $(_PROJECT).pdf $(_PROJECT).svg $(_PROJECT).png

.PHONY: $(_PROJECT).pdf
$(_PROJECT).pdf:
	latexmk -pdf $(_PROJECT).tex

.PHONY: clean
clean:
	latexmk -C $(PROJECT).tex

$(_PROJECT).svg: $(_PROJECT).pdf
	pdf2svg $< $@


$(_PROJECT).png: $(_PROJECT).pdf
	# -r is DPI, experimental
	pdftoppm $< $(basename $@) -png -singlefile -r 512
	pdftoppm $< $(basename $@) -png -r 512
