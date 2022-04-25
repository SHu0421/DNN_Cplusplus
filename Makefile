

TARGET = main

SRCS := $(wildcard ./src/*.cpp ./*.cpp)

OBJS := $(patsubst %cpp,%o,$(SRCS))

# use openMP
# CFLG = -fopenmp -g -Wall -I./include -std=c++11 
# CXX = g++-11

# LDFG = -Wl, $(shell pkg-config opencv --cflags --libs)

CFLG = -g -Wall -I./include -std=c++11 
CXX = g++


$(TARGET) : $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) 

%.o:%.cpp
	$(CXX) $(CFLG) -c $< -o $@ 

.PHONY : clean
clean:
	-rm *.o ./src/*.o main