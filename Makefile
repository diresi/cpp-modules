CC=g++
CFLAGS=--std=c++23
hello: hello.cpp
	${CC} ${CFLAGS} -o hello hello.cpp
