TARGET?=2048
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
CC = gcc 
CFLAGS?= -g
LDLIBS=-lncurses
DESTDIR?=/usr/local/bin

.PHONY: all install clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET) $(LDLIBS)

clean:
	@-rm -f $(TARGET) $(OBJ)

main.o: board.h draw.h save.h common.h
board.o: board.h common.h
draw.o: draw.h common.h
save.o: save.h common.h
