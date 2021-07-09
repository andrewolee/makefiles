# A Makefile for c++
CPP=clang++
CPPFLAGS=-g -Wall

SRC=src
OBJ=obj
BIN=bin

SRCS=$(wildcard $(SRC)/*.cpp)
OBJS=$(patsubst $(SRC)/%.cpp, $(OBJ)/%.o, $(SRCS))
BINS=$(BIN)/main

all:$(BINS)

$(BINS): $(OBJS)
	$(CPP) $(CPPFLAGS) $(OBJS) -o $@

$(OBJS): $(SRCS)
	$(CPP) $(CPPFLAGS) -c $< -o $@

run:
	./$(BINS)

clean:
	rm -r $(BINS) $(OBJS)
