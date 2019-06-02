err.o: err.c	
	gcc -Wall -c err.c	
main.o: main.c
	gcc -Wall -c main.c
geom: main.o err.o
	mkdir bin	
	mkdir src
	mkdir build
	cp err.o build
	cp main.o build
	gcc -Wall -o bin/geom build/main.o build/err.o
	rm -rf *.c.save
	rm -rf *.o
	cp err.c src
	cp err.h src
	cp main.c src
	rm -rf *.c
	rm -rf *.h
all: geom
