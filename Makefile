
CC = gcc
CFLAGS := -Iadd -Isub 
CPPFLAGS :=
LDFLAGS :=

DIRS = $(shell pwd)/objs
OBJSDIR = add sub

OBJS = main.o 

TARGET = demo

export CFLAGS CC DIRS

$(TARGET):$(OBJS) $(DIRS)/*.o

	$(CC) $(LDFLAGS) -o $@ $^

$(DIRS)/*.o:
	@$(MAKE) -C add
	@$(MAKE) -C sub
	
all:$(TARGET)

clean:
	$(RM) $(TARGET) $(OBJS) $(DIRS)/*.o
	@$(MAKE) -C add clean
	@$(MAKE) -C sub clean

.PHONY:clean demo