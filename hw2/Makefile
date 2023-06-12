CC = gcc
CFLAGS = -Wall

sdb: main.o 
	$(CC) $(CFLAGS) $^ -o $@ -lcapstone

%: %.c
	$(CC) $(CFLAGS) -c $^ -lcapstone

h:
	./sdb ./hello
g: 
	./sdb ./guess
l:
	./sdb ./loop1
d:
	./sdb ./deep

clean:
	rm -rf sdb *.o