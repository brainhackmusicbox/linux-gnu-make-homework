# 2.1) The first makefile with one simple target \
that should assemble an executable file \
from all existing files in the directory

all: *.c
	gcc -o main *.c

clean:
	rm -f main