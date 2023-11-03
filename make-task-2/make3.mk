.PHONY: src3.o

src3.o: src3.c
	@echo "\nBuilding $@ ..."
	gcc -c $< -o $@
