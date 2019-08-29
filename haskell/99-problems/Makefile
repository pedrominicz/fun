SRC = $(wildcard *.hs)
PROG = $(SRC:.hs=) 
OTHER = $(SRC:.hs=.hi) $(SRC:.hs=.o)

all: $(PROG)

%: %.hs
	ghc -Wall -Werror -o $@ $<

clean:
	rm -f $(PROG) $(OTHER)

.PHONY: all clean
