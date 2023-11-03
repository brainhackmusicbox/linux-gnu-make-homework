# 2.3) The third make-file is the same as the second, \
only with the use of auto-variables
.PHONY: main main.o src1.o

main: main.o src1.o
	@echo "\nLinking main.o and src1.o to executable ..."
	gcc -o $@ $^

main.o: main.c
	@echo "\nBuilding main.o ..."
	gcc -c $< -o $@

src1.o: src1.c
	@echo "\nBuilding src1.o ..."
	gcc -c $< -o $@

clean:
	rm -f main *.o
