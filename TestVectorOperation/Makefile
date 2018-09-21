CC=icpc
CXX=icpc
LD=icpc
CXXFLAGS=-O3 -xCORE-AVX512 -fopenmp -std=c++14
LDFLAGS=-fopenmp

MatMul:

%s:%cpp
	$(CXX) -S $(CXXFLAGS) -o $@ $<

TESTINTRINSICOBJS=TestIntrinsic.o TestIntrinsic_explicit.o TestIntrinsic_novector.o TestIntrinsic_lgas.o  TestIntrinsic_loadgatheradd.o TestIntrinsic_implicit.o TestIntrinsic_explicitload.o

TestIntrinsic: ${TESTINTRINSICOBJS}
	$(LD) -o $@ $(LDFLAGS)  ${TESTINTRINSICOBJS}

benchscatter: TestIntrinsic
	qsub -q copperhead -l walltime=4:00:00 -l nodes=1:ppn=36:skylake  bench_scatter.sh -d $(shell pwd)
