
BINARIES = test1 

all: $(BINARIES)

CXXFLAGS = -O0 -g  -Wall -I ../.. -pthread
LDFLAGS = -lpthread


$(BINARIES):
	g++ $(CXXFLAGS) -o $@ $(LIB_SRC) $(BASE_SRC) $(filter %.cpp,$^) $(LDFLAGS)

clean:
	rm -f $(BINARIES) core


test1: test1.cpp

