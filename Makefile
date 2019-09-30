CFLAGS = `guile-config compile`
LIBS = `guile-config link`

.PHONE: clean build run

build: tortoise

clean:
	rm -f tort tort.o

run: tort
	./tort

tort: tort.o
	gcc $< -o $@ -lm $(LIBS)

tort.o: tort.c
	gcc -c $< -o $@ $(CFLAGS)
