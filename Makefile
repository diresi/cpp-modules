CC=g++
CFLAGS=--std=c++23 -fconcepts -fmodules-ts
hello: hello.cpp main.cpp 
	${CC} ${CFLAGS} -x c++-system-header string
	${CC} ${CFLAGS} -x c++-system-header print
	${CC} ${CFLAGS} -o hello hello.cpp main.cpp
