

OBJS = sub_int.o sub_float.o

all:$(OBJS)

$(OBJS):
	$(CC) -c -o $(DIRS)/$@ $^
	
clean:
	$(RM) $(OBJS)

.PHONY:clean