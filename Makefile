# libtumblr Makefile

#SRC_DIR=/src
OUTPUT_DIR=./bin
OBJS=tumblr.o
MAJOR_VERSION=0
MINOR_VERSION=1
RELEASE_NO=1

all : tumblr.o
	gcc -shared -Wl,-soname,libtumblr.so.1 -o ${OUTPUT_DIR}/libtumblr.so.${MAJOR_VERSION}.${MINOR_VERSION}.${RELEASE_NO} ${OUTPUT_DIR}/${OBJS} -lc

tumblr.o : tumblr.c
	gcc -fPIC -c -g -Wall tumblr.c -o ${OUTPUT_DIR}/${OBJS}

clean :
	rm -f ${OUTPUT_DIR}/${OBJS} ${OUTPUT_DIR}/libtumblr.so.*
