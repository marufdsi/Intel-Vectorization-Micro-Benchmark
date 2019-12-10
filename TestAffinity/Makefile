TARGET := Affinity
CC=icpc
CXX=icpc
LD=icpc

LDFLAGS=-fopenmp
CXXFLAGS=-O3 -axCORE-AVX512 -fopenmp -std=c++14

LIBS = -lm


SOURCES = $(wildcard *.cpp) $(wildcard */*.cpp) $(wildcard */*/*.cpp)

DEPS = $(wildcard *.h) $(wildcard */*.h) $(wildcard */*/*.h)

OBJ := $(SOURCES:.cpp=.o)


.PHONY: all

all: $(TARGET)


$(TARGET): $(OBJ) $(SOURCES)
	$(CXX) $(OBJ) $(CXXFLAGS) -o $@

Assembly: $(SOURCES)
	$(CXX) -S $(CXXFLAGS) -o $@ $<

clean:
	rm -r $(TARGET) $(OBJ)