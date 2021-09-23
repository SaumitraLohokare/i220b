all: morse-encode morse-decode

morse-encode: morse.o file-utils.o main.o
	gcc -Wall main.o morse.o file-utils.o -o morse-encode

morse-decode: morse.o file-utils.o main.o
	gcc -Wall main.o morse.o file-utils.o -o morse-decode

morse.o: morse.c morse.h
	gcc -Wall -c morse.c morse.h

main.o: main.c
	gcc -Wall -c main.c

file-utils.o: file-utils.c file-utils.h
	gcc -Wall -c file-utils.c file-utils.h

clean:
	rm -rf *.o *.gch morse-encode morse-decode morse *.txt *.bin