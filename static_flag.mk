main: main.o libfoobar.a
	gcc -o $@ main.o -static libfoobar.a

libfoobar.a: foo.o bar.o
	ar rcs $@ $^

%.o: %.c
	gcc -c $<

clean:
	rm -f *.o *.a main

