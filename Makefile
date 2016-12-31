
CC = gcc
CFLAGS := -Iadd -Isub 
CPPFLAGS :=
LDFLAGS :=

DIR = $(shell pwd)/objs
OBJSDIR = add sub

OBJS = main.o 

TARGET = demo

export CFLAGS CC DIR

$(TARGET):$(OBJS) $(DIR)/*.o
	@$(MAKE) -C add
	@$(MAKE) -C sub
	$(CC) $(LDFLAGS) -o $@ $^

all:$(TARGET)

clean:
	$(RM) $(TARGET) $(OBJS)
	@$(MAKE) -C add clean
	@$(MAKE) -C sub clean

.PHONY:clean demo