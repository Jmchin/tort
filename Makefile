CFLAGS =
LIBS = -lm

.PHONE: clean build run

build: tortoise

clean:
	rm -f tort tort.o

run: tort
	./tort

tort: tort.o
	gcc $< -o $@ $(LIBS)

tort.o: tort.c
	gcc -c $< -o $@ $(CFLAGS)
