CC=icpc
CXX=icpc
LD=icpc
CXXFLAGS=-O3 -xCORE-AVX512 -fopenmp -std=c++14
LDFLAGS=-fopenmp



OBJ=Test.o

Affinity: ${OBJ}
	$(LD) -o $@ $(LDFLAGS)  ${OBJ}


clean:
	rm -r ${OBJ} Affinity