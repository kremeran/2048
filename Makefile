TARGET?=2048
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
CC = gcc #green hills compiler
CFLAGSGHS?= -Xprologue_epilogue_hooks_noinline -DGHS_FEE_COLLECT -G #flags to enbale history
CFLAGSGDB?= -g
LDLIBSGHS=-lncurses -lghseagle 
LDLIBSGDB=-lncurses -lghseagle 
DESTDIR?=/usr/local/bin

.PHONY: all install clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGSGHS) $(OBJ) -o $(TARGET) $(LDLIBSGHS)

gdb: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGSGDB) $(OBJ) -o $(TARGET) $(LDLIBSGDB)

clean:
	@-rm -f $(TARGET) $(OBJ)

main.o: board.h draw.h save.h common.h
board.o: board.h common.h
draw.o: draw.h common.h
save.o: save.h common.h
