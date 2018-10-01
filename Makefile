.PHONY: all
all: files run brew mac # sets up dotfiles, installs brew deps and mac os defaults.

.PHONY: simple
simple: brew shell

.PHONY: new
new: mac brew shell

.PHONY: dotfiles
dotfiles: files run



.PHONY: files
files: # Install dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git" -not -name ".gitignore" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file $(HOME)/$$f; \
	done; \

	ln -snf $(CURDIR)/.aliases $(HOME)/.aliases
	ln -snf $(CURDIR)/.bash_profile $(HOME)/.bash_profile;
	ln -snf $(CURDIR)/.bash_prompt $(HOME)/.bash_prompt;
	ln -snf $(CURDIR)/.bashrc $(HOME)/.bashrc
	ln -snf $(CURDIR)/.dockerfunc $(HOME)/.dockerfunc
	ln -snf $(CURDIR)/.exports $(HOME)/.exports
	ln -snf $(CURDIR)/.functions $(HOME)/.functions


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

.PHONY: shell
shell:
	echo "setting up z-shell"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

.PHONY: run
run:
	source ~/.bash_profile # This will load .bashrc and other files