.PHONY: all clean

CC=g++
CFLAGS=--std=c++23 -fconcepts -fmodules-ts
#hello: hello.cpp main.cpp
#	${CC} ${CFLAGS} -x c++-system-header string
#	${CC} ${CFLAGS} -x c++-system-header print
#	${CC} ${CFLAGS} -c hello.cpp
#	${CC} ${CFLAGS} -o hello main.cpp

all: hello

headers:
	${CC} ${CFLAGS} -x c++-system-header string
	${CC} ${CFLAGS} -x c++-system-header print

hello: hello.o main.o
	${CC} ${CFLAGS} $^ -o $@

%.o: %.cpp headers
	${CC} ${CFLAGS} -c $<

clean:
	@-rm hello
	@-rm hello.o
	@-rm main.o
	@-rm -r gcm.cache
