.PHONY: all
all: dotfiles brew mac # sets up dotfiles, installs brew deps and mac os defaults.

.PHONY: dotfiles
dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git" -not -name ".gitignore" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file $(HOME)/$$f; \
	done; \

	ln -snf $(CURDIR)/.aliases $(HOME)/.aliases
	ln -snf $(CURDIR)/.exports $(HOME)/.exports

.PHONY: brew
brew:
	for file in $(shell find $(CURDIR) -type f -name "brew.sh"); do \
		f=$$(basename $$file); \
		source "$$f"; \
	done

.PHONY: mac
mac:
	for file in $(shell find $(CURDIR) -type f -name ".macos"); do \
		f=$$(basename $$file); \
		source "$$f"; \
	done