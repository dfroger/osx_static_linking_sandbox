main: main.f90
	gfortran -o $@ $<

clean:
	rm -f main

