#!/usr/bin/make

# Necessary for the debian package creation
DESTDIR=

# Where tex is
TEXMFMAIN=$(DESTDIR)/usr/share/texmf

# Where to put the latex stuff 
TEX=$(TEXMFMAIN)/tex/latex/problectix-exam

install:
	./tools/create-templates
	install -d -m755 -oroot -groot $(TEX)
	install -oroot -groot --mode=0644 latex/teacherexam.cls $(TEX)
	install -oroot -groot --mode=0644 problectix-exam-tmp/*counter.tex $(TEX)
	texhash
