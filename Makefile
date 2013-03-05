# Roughly modeled after
# https://github.com/kchmck/vim-coffee-script/blob/master/Makefile

VERSION = 0.0.1
ARCHIVE = vim-rpal-$(VERSION).tar.gz
ARCHIVE_DIRS = ftdetect syntax

all: archive

archive:
	git archive HEAD -o $(ARCHIVE) -- $(ARCHIVE_DIRS)

clean:
	-rm -f $(ARCHIVE)
