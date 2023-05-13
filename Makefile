CC = gcc

CFLAGS = -Wall -O -g -Iui -Isystem -Iweb_server
OBJS = main.o system/system_server.o ui/gui.o ui/input.o web_server/web_server.o
TARGET = toy_system

SOURCES = main.c ui/gui.c ui/input.c system/system.c web_server/web_server.c

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< 

.PHONY: clean

clean:
	rm -f $(OBJS) $(TARGET)
 
