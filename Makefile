all: client server

client : client.o
	cc -o client/bin/client client.o

server : server.o
	cc -o server/bin/server server.o

client.o : client/src/client.c
	cc -c client/src/client.c

server.o : server/src/server.c
	cc -c server/src/server.c

clean :
	rm client/bin/client server/bin/server client.o server
