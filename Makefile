# Makefile for symlinks
CC     ?= gcc
CFLAGS += -Wall -O2 $(shell getconf LFS_CFLAGS 2>/dev/null)
MANDIR  ?= /usr/local/man/man8
BINDIR  ?= /usr/local/bin
INSTALL ?= install

OWNER   = root
GROUP   = root

.PHONY: all
all: symlinks

symlinks: symlinks.c
	$(CC) $(CFLAGS) -o symlinks symlinks.c

install: install_dirs symlinks symlinks.8
	$(INSTALL) -c -o $(OWNER) -g $(GROUP) -m 755 symlinks $(BINDIR)
	$(INSTALL) -c -o $(OWNER) -g $(GROUP) -m 644 symlinks.8 $(MANDIR)

install_dirs:
	if [ ! -d $(BINDIR) ]; then mkdir -p $(BINDIR); fi
	if [ ! -d $(MANDIR) ]; then mkdir -p $(MANDIR); fi

.PHONY: clean
clean:
	rm -f symlinks *.o core
