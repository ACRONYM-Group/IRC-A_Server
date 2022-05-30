server : server.o
	cc -o bin/server server.o

server.o : src/server.c
	cc -c -Wall src/server.c

clean :
	rm client/bin/client bin/server server.o
