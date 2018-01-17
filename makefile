#CC specifies which compiler we're using
CC = g++

#CCFLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
CCFLAGS = -c -Wall -std=c++14

#LINKER_FLAGS specifies the libraries we're linking against
#LINKER_FLAGS = -lSDL2
LINKER_FLAGS = 

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = ins_sort

#OBJS specifies which files to compile as part of the project
OBJS = insertion_sort.o insert_algorithm.o utils.o

all: $(OBJ_NAME)

#This is the target that compiles our executable
$(OBJ_NAME): $(OBJS)
	$(CC) $(OBJS) -o $(OBJ_NAME)

insertion_sort.o: insertion_sort.cpp insertion.h
	$(CC) $(CCFLAGS) insertion_sort.cpp $(LINKER_FLAGS)

insert_algorithm.o: insert_algorithm.cpp insertion.h
	$(CC) $(CCFLAGS) insert_algorithm.cpp $(LINKER_FLAGS)

utils.o: utils.cpp insertion.h
	$(CC) $(CCFLAGS) utils.cpp $(LINKER_FLAGS)

clean:
	rm -rf *.o $(OBJ_NAME)
