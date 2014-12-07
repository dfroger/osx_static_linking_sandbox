LDFLAGS=-L/Developer/SDKs/MacOSX10.5.sdk/usr/lib

main: main.f90
	MACOSX_DEPLOYMENT_TARGET=10.5 gfortran -o $@ $(LDFLAGS) $<

clean:
	rm -f main

