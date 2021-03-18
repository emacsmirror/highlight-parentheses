EMACS = emacs --batch -q -no-site-file -no-init-file

ELS = $(wildcard *.el)
OBJECTS = $(ELS:.el=.elc)
BACKUPS = $(ELS:.el=.el~)

.PHONY: compile clean emacs-version

compile:
	$(EMACS) -f batch-byte-compile $(ELS)

clean:
	rm -f $(OBJECTS) $(BACKUPS)

emacs-version:
	$(EMACS) $(BATCH) --version
