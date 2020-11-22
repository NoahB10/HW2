# HW2 makefile for the given files from user id 941180002

# Defined variables
CC     = gcc
CFLAGS = -Wall -g -std=c99
CCLINK = $(CC)
EXEC = prog.exe
OBJS   = main.o file0.o file1.o file2.o file3.o file4.o
RM = rm -fr *.exe

#general
all: $(OBJS)
	$(CCLINK) $(OBJS) -o $(EXEC)
	
#specific calls 	
file0.o: file0.h file3.h file4.h file0.c
	$(CC) $(CFLAGS) -c file0.c

file1.o: file1.h file2.h file3.h file4.h file1.c
	$(CC) $(CFLAGS) -c file1.c

file2.o: file1.h file2.h file3.h file2.c
	$(CC) $(CFLAGS) -c file2.c
	
file3.o: file0.h file3.h file3.c
	$(CC) $(CFLAGS) -c file3.c
	
file4.o: file4.h file4.c
	$(CC) $(CFLAGS) -c file4.c

#cleaning removes any object files if they exist
clean:
	 $(RM) $(OBJS)
