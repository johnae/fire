PREFIX ?= /usr/local

.PHONY: all clean

all: fire

fire:
	@echo "BUILDING FIRE"
	stack ghc -- -O2 -threaded fire.hs

install: all
	cp fire $(PREFIX)/bin

rebuild: clean all

clean:
	rm -f fire.hi fire.o fire