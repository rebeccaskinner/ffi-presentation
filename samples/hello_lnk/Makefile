all: hello

%.o:%.hs
	ghc -c $(<) -o $(@)

%/o:%.c
	gcc -std=gnu99 -c $(<) -o $(@)

hello:hello_hs.o hello_c.o
	ghc $(^) -o $(@)

clean:
	rm *.o
	rm *.hi
	rm hello

.PHONY: all clean
