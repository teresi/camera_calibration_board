# Make calibration boards

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash

.PHONY: all clean circle chess

all: circle chess

circle:
	+$(MAKE) -C circle

chess:
	+$(MAKE) -C chess

clean:
	+$(MAKE) clean -C chess
	+$(MAKE) clean -C circle
