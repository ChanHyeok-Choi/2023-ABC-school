# Writer: 20181257 ChanHyeok Choi\
  This is Makefile for that contains 1.cpp, LL.cpp, LL.h and clean method for building and clearing all file made from "make".

CC = g++
TARGET = main
OBJS = main.o
CXXFLAGS += -Wall -std=c++17 -g -pedantic

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -o $@ $^

.c.o:
	$(CC) $(CXXFLAGS) -c -o $@ $<

.phony: clean
clean:
	rm -f $(TARGET) $(OBJS)
