CC=icpc
CXX=icpc
LD=icpc
CXXFLAGS=-O3 -xCORE-AVX512 -fopenmp -std=c++14
LDFLAGS=-fopenmp



OBJ=Test.o Util.o

Affinity: ${OBJ}
	$(LD) -o $@ $(LDFLAGS)  ${OBJ}

%s:%cpp
	$(CXX) -S $(CXXFLAGS) -o $@ $<

clean:
	rm -r ${OBJ} Affinity