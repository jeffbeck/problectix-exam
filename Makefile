#!/usr/bin/make

# Necessary for the debian package creation
DESTDIR=

# Where tex is
TEXMFMAIN=$(DESTDIR)/usr/share/texmf

# Where to put the latex stuff 
TEX=$(TEXMFMAIN)/tex/latex/problectix-exam

install:
	#./tools/create-templates
	install -d -m755 -oroot -groot $(TEX)
	install -oroot -groot --mode=0644 template/*-abd.tex $(TEX)
	install -oroot -groot --mode=0644 template/*-aed.tex $(TEX)
	install -oroot -groot --mode=0644 template/*-aeoc.tex $(TEX)
	install -oroot -groot --mode=0644 template/innung.eps $(TEX)
	texhash
