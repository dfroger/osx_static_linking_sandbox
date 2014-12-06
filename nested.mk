main: main.o libfoobar.a
	gcc -o $@ $^

libfoo.a: foo.o
	ar rcs $@ $^

libfoobar.a: libfoo.a bar.o
	ar rcs $@ $^

%.o: %.c
	gcc -c $<

clean:
	rm -f *.o *.a main
