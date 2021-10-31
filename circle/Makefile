# Make calibration board w/ symmetric circles

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash
PROJECT := circle

.PHONY: all clean
.PHONY: $(PROJECT).pdf  # delegate to latexmk b/c it needs run more than once for LaTeX

$(PROJECT).pdf:
	latexmk -pdf $(PROJECT).tex

clean:
	latexmk -C $(PROJECT).tex
