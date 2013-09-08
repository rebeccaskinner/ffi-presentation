CC= gcc
CFLAGS=-std=gnu99 -Wall -Wextra -Werror -O0
all: hello

%.o:%.hs
	ghc -c $(<) -o $(@)

%/o:%.c
	gcc -c $(<) -o $(@)

hello:hello_hs.o hello_c.o
	ghc $(^) -o $(@)

clean:
	rm *.o
	rm *.hi
	rm hello

.PHONY: all clean
