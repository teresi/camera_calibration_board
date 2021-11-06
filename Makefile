# Make calibration boards

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash

.PHONY: all clean circle chess asym

all: circle chess asym

circle:
	+$(MAKE) -C circle

chess:
	+$(MAKE) -C chess

asym:
	+$(MAKE) -C circle_asym

clean:
	+$(MAKE) clean -C chess
	+$(MAKE) clean -C circle
	+$(MAKE) clean -C circle_asym
