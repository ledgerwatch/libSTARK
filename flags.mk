#CC=/usr/local/bin/g++-8
#CC=clang++
CPPFLAGS=-std=c++11
CFLAGS=-O3 -g -Wall -fmessage-length=0 -maes -msse4 -mtune=native
CFLAGS+=-fopenmp
