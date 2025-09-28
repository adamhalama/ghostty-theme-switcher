PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
install:
	mkdir -p "$(BINDIR)"
	ln -sfn "$(PWD)/bin/ghostty-theme" "$(BINDIR)/ghostty-theme"
uninstall:
	rm -f "$(BINDIR)/ghostty-theme"
