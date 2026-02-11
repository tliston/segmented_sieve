CFLAGS  = -c -Wall -s -O3 -march=native -std=gnu99 -D_GNU_SOURCE -funroll-loops
ASMFLAG = -S -masm=intel -fverbose-asm
LDFLAGS = -flto -lm -s
TARGETS = segmented_sieve
SOURCES = segmented_sieve.c
ASM     = segmented_sieve.s
OBJECTS = $(SOURCES:.c=.o)
CC      = gcc

all: $(SOURCES) $(TARGETS)

$(TARGETS): $(OBJECTS) Makefile
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

segmented_sieve.o: segmented_sieve.c Makefile
	$(CC) $(CFLAGS) segmented_sieve.c -o segmented_sieve.o

segmented_sieve.s: segmented_sieve.c Makefile
	$(CC) $(CFLAGS) $(ASMFLAG) segmented_sieve.c -o segmented_sieve.s

clean:
	rm -f segmented_sieve.o
	rm -f segmented_sieve
