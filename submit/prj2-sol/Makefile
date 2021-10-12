all: prj2

prj2: main.o int-set.o int-set-strings.o
	$(CC) main.o int-set.o int-set-strings.o -o prj2

main.o: main.c
int-set.o: int-set.h int-set.c
int-set-strings.o: int-set-strings.h int-set-strings.c
