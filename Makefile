# libtumblr Makefile

#SRC_DIR=/src
OUTPUT_DIR=./bin

all : tumblr.o
	gcc -shared -Wl,-soname,libtumblr.so.1 -o ${OUTPUT_DIR}/libtumblr.so.1.0.1 ${OUTPUT_DIR}/tumblr.o -lc

tumblr.o : tumblr.c
	gcc -fPIC -c -g -Wall tumblr.c -o ${OUTPUT_DIR}/tumblr.o
