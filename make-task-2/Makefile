.PHONY: main main.o clean

INCLUDE_MAKEFILES?=yes
MAKEFILES=$(wildcard make?.mk)

main: main.o src1.o src2.o src3.o
	@echo "\nLinking object files $^ to executable '$@' ..."
	gcc -o $@ $^


main.o: main.c
	@echo "\nINCLUDE_MAKEFILES: " $(INCLUDE_MAKEFILES)

	@echo "\nBuilding $@ ..."
	gcc -c $< -o $@

ifeq ($(INCLUDE_MAKEFILES),yes)
	@echo "\nIncluding makefiles: $(MAKEFILES)"
include $(MAKEFILES)
else ifeq ($(INCLUDE_MAKEFILES),no)
	@echo "\nExecuting makefiles with 'make -f': $(MAKEFILES)"
	for FILE in $(MAKEFILES); do \
		make -f $$FILE; \
	done
endif

clean:
	rm -f *.o ./main
