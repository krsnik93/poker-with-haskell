
.SILENT:

.PHONY: all clean test

.PHONY: fmt
fmt: fmt-cabal

fmt-cabal:
	cabal format

fmt-hs:
	ormolu --mode inplace $(shell git ls-files '*.hs')
