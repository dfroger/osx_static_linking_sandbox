main: main.o foo.o bar.o
	gcc -o $@ $^

%.o: %.c
	gcc -c $<

clean:
	rm -f *.o main
