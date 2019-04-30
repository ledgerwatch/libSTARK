OSFLAG 				:=
ifeq ($(OS),Windows_NT)
	# TODO
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		CC=/usr/bin/g++
		AR=/usr/bin/ar crv
	endif
	
	ifeq ($(UNAME_S),Darwin)
		# Homebrew: gcc v8
		CC=/usr/local/bin/g++-8
		# XCode libtool instead of gnu ar
		AR=libtool -static -a -o
	endif
endif
# Default: AR=
CPPFLAGS += -std=c++11
CFLAGS += -O3 -g -Wall -fmessage-length=0 -maes -msse4 -mtune=native
CFLAGS += -fopenmp

