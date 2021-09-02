key-value: main.o key-value.o process-file.o
	gcc main.o key-value.o process-file.o -o key-value

main.o: main.c
	gcc -c main.c

key-value.o: key-value.c key-value.h
	gcc -c key-value.c key-value.h

process-file.o: process-file.c process-file.h
	gcc -c process-file.c process-file.h

clean:
	rm -rf *.o *.h.gch key-value
