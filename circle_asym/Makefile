# Make calibration board w/ symmetric circles

# NOTE the CNC can't handle more than one page per file

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash
_PROJECT := circle_asym


.PHONY: all
all: $(_PROJECT).pdf $(_PROJECT).svg $(_PROJECT)_text.png

.PHONY: $(_PROJECT).pdf
$(_PROJECT).pdf:
	latexmk -pdf $(_PROJECT).tex
	@# separate pages of PDF b/c the CNC can only load the first
	pdfseparate $@ $(_PROJECT)_%d.pdf

.PHONY: clean
clean:
	latexmk -C $(_PROJECT).tex
	rm -rf *.png
	rm -rf *.svg
	rm -rf *.pdf

$(_PROJECT).svg: $(_PROJECT).pdf
	@# first page only, the second page has text
	@# the CNC can't handle text in the SVG (so far)
	pdf2svg $< $@ 1

$(_PROJECT)_text.png &: $(_PROJECT).pdf
	@# -r is DPI, experimental
	@# intended for text sections, don't have a way yet to maintain the scaling
	pdftoppm $< $(basename $@)_text -f 2 -l 2 -png -r 512
