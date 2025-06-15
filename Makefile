
.SILENT:

fmt: fmt-cabal

fmt-cabal:
	cabal format

fmt-hs:
	ormolu --mode inplace $(shell git ls-files '*.hs')