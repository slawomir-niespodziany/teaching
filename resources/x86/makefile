CC=gcc
CFLAGS=-m32 -Wall

all:	main.o f.o
		$(CC) $(CFLAGS) -z noexecstack main.o f.o -o f
main.o:	main.c
		$(CC) $(CFLAGS) -c main.c -o main.o
f.o:	f.s
		nasm -f elf f.s -o f.o
clean:
		rm -rf *.o f