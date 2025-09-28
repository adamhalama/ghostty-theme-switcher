.PHONY: install uninstall
# Default to Homebrew prefix if present, otherwise /usr/local
PREFIX ?= $(shell brew --prefix 2>/dev/null || echo /usr/local)
BINDIR := $(PREFIX)/bin

# Absolute path to script in this repo
SCRIPT := $(abspath $(CURDIR)/bin/ghostty-theme)

install:
	@mkdir -p "$(BINDIR)"
	@ln -sfn "$(SCRIPT)" "$(BINDIR)/ghostty-theme"
	@echo "Installed -> $(BINDIR)/ghostty-theme -> $(SCRIPT)"

uninstall:
	@rm -f "$(BINDIR)/ghostty-theme"
	@echo "Removed $(BINDIR)/ghostty-theme"
