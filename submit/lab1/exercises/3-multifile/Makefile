PROJECT = quadr

CFLAGS = -g -Wall -std=c18
LDFLAGS = -lm

SRCFILES = main.c \
quadr.c \
quadr.h \
Makefile \
test.data

$(PROJECT):	quadr.o main.o
		$(CC) $(LDFLAGS) quadr.o main.o -o $@

dist: $(PROJECT).tar.gz

$(PROJECT).tar.gz:	$(SRCFILES)
			tar -cf $(PROJECT).tar $(SRCFILES)
			gzip -f $(PROJECT).tar

depend:
		$(CC) -MM $(CPPFLAGS) *.c

clean:
		rm -f *.o $(PROJECT) $(PROJECT).tar.gz

# automatically generated dependencies
main.o: main.c quadr.h
quadr.o: quadr.c quadr.h
