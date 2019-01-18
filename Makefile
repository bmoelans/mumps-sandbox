CC=gcc
CFLAGS=-g -pedantic -Wall -Wno-unknown-pragmas -DTEST -std=c99
YOTTA_INCLUDES=-I $(ydb_dist) -L $(ydb_dist)

wordfreq: wordfreq.c
	$(CC) $(CFLAGS) $(YOTTA_INCLUDES) -o $@ $^ -lyottadb
