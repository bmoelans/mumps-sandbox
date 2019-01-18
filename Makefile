CC=gcc
CFLAGS=-g -pedantic -Wall -Wno-unknown-pragmas -std=c99
YOTTA_INCLUDES=-I $(ydb_dist) -L $(ydb_dist)

wordfreq.so: wordfreq.c
	$(CC) $(CFLAGS) $(YOTTA_INCLUDES) -shared -fPIC -o $@ $^ -lyottadb

wordfreq: wordfreq.c
	$(CC) $(CFLAGS) $(YOTTA_INCLUDES) -DTEST -o $@ $^ -lyottadb