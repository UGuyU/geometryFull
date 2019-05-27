geom.o: geom.c
	gcc -Wall -c geom.c
geom: geom.o
	gcc -Wall -o geom geom.o
	rm -rf *.o
	rm -rf *.c.save
all: geom
