SRC = $(wildcard *.hs)
PROG = $(SRC:.hs=)

all: $(PROG)

%: %.hs
	ghc -o $@ $<

clean:
	rm -f $(PROG) $(wildcard *.hi) $(wildcard *.o)

.PHONY: all clean
