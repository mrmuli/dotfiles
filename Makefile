.PHONY: test
.test: #random one
	for file in $(shell find $(CURDIR) -name "*.sh"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file $(HOME)/Downloads/$$f; \
	done; \