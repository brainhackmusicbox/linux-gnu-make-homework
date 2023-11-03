.PHONY: src1.o

src1.o: src1.c
	@echo "\nBuilding $@ ..."
	gcc -c $< -o $@
