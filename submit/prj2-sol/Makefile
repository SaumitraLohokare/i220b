all: int-set

int-set: main.o int-set.o int-set-strings.o
	$(CC) main.o int-set.o int-set-strings.o -o int-set

main.o: main.c
int-set.o: int-set.h int-set.c
int-set-strings.o: int-set-strings.h int-set-strings.c

clean:
	rm -rf *.o int-set tests