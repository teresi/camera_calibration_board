#!/usr/bin/make -f


tex := $(wildcard *.tex)
pdf := $(patsubst %.tex,%.pdf,$(tex))
png := $(patsubst %.pdf,%.png,$(pdf))
svg := $(patsubst %.pdf,%.svg,$(pdf))


.PHONY: all
all: $(pdf) $(png) $(svg)


$(pdf): $(tex)


$(png): $(pdf)


$(svg): $(pdf)


.PHONY: clean
clean:
	latexmk -C $(tex)
	rm -rf *.pdf
	rm -rf *.svg
	rm -rf *.png


%.pdf: %.tex
	max_print_line=96 \
	latexmk -pdf $<


%.svg: %.pdf
	pdf2svg $< $@


%.png: %.pdf
	pdftoppm $< $(basename $@) -png -singlefile
