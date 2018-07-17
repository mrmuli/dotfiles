.PHONY: all
all: dotfiles brew #sets up dotfiles and ... TODO


.PHONY: dotfiles
dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -name -not ".git" -name -not ".gitignore" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		# sudo ln -sf $$file $(HOME)/$$f; \ # might break something so I'll comment it out for now :)

.PHONY: brew
brew: #random one
	for file in $(shell find $(CURDIR) -name "brew.sh"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file $(HOME)/Downloads/$$f; \ # this was a test.
	done