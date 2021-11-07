# Make calibration boards

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SHELL := /bin/bash

.PHONY: all clean circle chess asym siemens

all: circle chess asym siemens

circle:
	+$(MAKE) -C circle

chess:
	+$(MAKE) -C chess

asym:
	+$(MAKE) -C circle_asym

siemens:
	+$(MAKE) -C siemens

clean:
	+$(MAKE) clean -C chess
	+$(MAKE) clean -C circle
	+$(MAKE) clean -C circle_asym
	+$(MAKE) clean -C siemens
