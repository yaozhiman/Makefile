
CC = gcc
CURDIR = $(shell pwd)
CFLAGS := -I$(CURDIR)/add -I$(CURDIR)/sub
CPPFLAGS :=
LDFLAGS := 

SUBDIRS = add sub main
OBJSDIR = $(CURDIR)/objs

TARGET = demo

export CFLAGS CC OBJSDIR

all:$(TARGET) 

$(TARGET):
	$(call make_subdir,all)
	$(CC) $(LDFLAGS) -o $@ $(OBJSDIR)/*.o
	
define make_subdir
 @for subdir in $(SUBDIRS) ; do \
 ( $(MAKE) -C $$subdir $1 ) \
 done;
endef

clean:
	@$(RM) $(TARGET) $(OBJSDIR)/*.o
 
.PHONY:clean all