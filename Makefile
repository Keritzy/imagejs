#File: Makefile
#Project: imagejs
#Author: jklmnn
#Homepage: http://jklmnn.de/imagejs/
#License: GNU GENERAL PUBLIC LICENSE Version 3

all:
	gcc -std=c11 -c gif.c bmp.c webp.c pnm.c pgf.c main.c
	gcc *.o -o imagejs
i386:
	gcc -m32 -std=c11 -c gif.c bmp.c webp.c pnm.c pgf.c main.c 
	gcc -m32 *.o -o imagejs.i386
amd64:
	gcc -m64 -std=c11 -c gif.c bmp.c webp.c pnm.c pgf.c main.c 
	gcc -m64 *.o -o imagejs.x86_64
win32:
	i686-w64-mingw32-gcc -std=c11 -c gif.c bmp.c webp.c pnm.c pgf.c main.c 
	i686-w64-mingw32-gcc *.o -o imagejs.exe
mach-o32:
	i686-apple-darwin10-gcc -m32 -std=c99 -c gif.c bmp.c webp.c pnm.c pgf.c main.c
	i686-apple-darwin10-gcc -m32 *.o -o imagejs.macho-i386
mach-o64:
	i686-apple-darwin10-gcc -m64 -std=c99 -c gif.c bmp.c webp.c pnm.c pgf.c main.c
	i686-apple-darwin10-gcc -m64 *.o -o imagejs.macho-x86_64
release:
	make amd64
	make i386
	make win32
	make mach-o32
	make mach-o64
	rm -f *.o
clean:
	rm -f imagejs*
	rm -f *.o
