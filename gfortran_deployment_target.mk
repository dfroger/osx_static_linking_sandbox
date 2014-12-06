main: main.f90
	MACOSX_DEPLOYMENT_TARGET=10.5 gfortran -o $@ $<

clean:
	rm -f main

