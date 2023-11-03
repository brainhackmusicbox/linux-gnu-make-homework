# 2.2) The second make file must have several targets \
(one target for each source code file) \
without any auto-variables
.PHONY: main main.o src1.o

main: main.o src1.o
	@echo "\nLinking main.o and src1.o to executable ..."
	gcc -o main main.o src1.o


main.o: main.c
	@echo "\nBuilding main.o ..."
	gcc -c main.c -o main.o

src1.o: src1.c
	@echo "\nBuilding src1.o ..."
	gcc -c src1.c -o src1.o

clean:
	rm -f main *.o
