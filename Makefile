
INCLUDES := -Iinclude

LIBS := -lssl -lcrypto 

all:
	gcc -g -c $(INCLUDES) -o common.o common.c 

	gcc -g $(INCLUDES) -o client.out client/client.c common.o $(LIBS)

	gcc -g $(INCLUDES) -o server.out server/server.c common.o $(LIBS)

clean:

	rm -rf *.o *.out
