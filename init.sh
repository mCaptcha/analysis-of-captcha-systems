#!/bin/bash

install() {
	export TEXMFDIST=/usr/share/texmf-dist
	readonly tlmgr="$TEXMFDIST/scripts/texlive/tlmgr.pl --usermode"
	$tlmgr install ieeetran
	$tlmgr install ieeetrantools
	$tlmgr install blindtext
}

clean() {
	rm -rf paper.aux  paper.fdb_latexmk  paper.fls  paper.log  paper.pdf
}

clean
