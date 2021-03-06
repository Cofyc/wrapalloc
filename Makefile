CC=gcc
COPTS=-O -g -Wall -Werror

.PHONY: all clean

all: wrapalloc.so

%.so: %.c
	$(CC) $(COPTS) -fPIC -shared $< -o $@ -ldl || \
	$(CC) $(COPTS) -fPIC -shared $< -o $@

clean:
	rm -rf *.so *.o *.lo

