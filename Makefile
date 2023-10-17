CC=gcc
CFLAGS=-m32 -no-pie

% : %.s
	${CC} ${CFLAGS} $< -o $@
