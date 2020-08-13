.PHONY: build

all: build

build: main.cpp
	$(CXX) -o main $^

