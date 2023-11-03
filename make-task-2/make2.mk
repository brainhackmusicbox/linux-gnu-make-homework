.PHONY: src2.o

src2.o: src2.c
	@echo "\nBuilding $@ ..."
	gcc -c $< -o $@
