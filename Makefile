err.o: err.c	
	gcc -Wall -c err.c	
main.o: main.c
	gcc -Wall -c main.c
P.o: P.c
	gcc -Wall -c P.c
S.o: S.o
	gcc -Wall -c S.c
mkdir:
	mkdir bin	
	mkdir src
	mkdir build
	mkdir src/test	
	mkdir build/test
geom: main.o err.o err.h P.o S.o	
	gcc -Wall -o bin/geom main.o err.o err.h P.o S.o
mytest.o: mytest.c ctest.h
	gcc -Wall -c mytest.c ctest.h
maint.o: maint.c ctest.h
	gcc -Wall -c maint.c ctest.h
test: mytest.o ctest.h maint.o P.o S.o err.h err.o
	gcc -Wall -o bin/test mytest.o ctest.h maint.c P.o S.o err.h err.o
cp:
	cp err.o build
	cp main.o build	
	cp P.o build
	cp S.o build
	cp P.c src
	cp S.c src	
	cp err.c src
	cp err.h src
	cp main.c src
	cp mytest.o build/test
	cp maint.o build/test
	cp ctest.h src/test
	cp maint.c src/test
	cp mytest.c src/test
clean:	
	rm -rf *.c*
	rm -rf *.h*
	rm -rf *.o*
all: err.o main.o P.o S.o mkdir geom mytest.o maint.o test cp 
