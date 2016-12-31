
# CC = gcc
# CFLAGS := -std=c99 -lpthread -D__USE_GNU -D_GNU_SOURCE
# CPPFLAGS :=
# LDFLAGS :=

OBJS = add_int.o add_float.o

all:$(OBJS)
	
$(OBJS):%.o:%.c
	$(CC) -c $< -o $(DIRS)/$@ $(CFLAGS)
	
clean:
	$(RM) $(OBJS)

.PHONY:clean