OBJ = test
CFLAGS = -g -Wall

all : $(OBJ)

$(OBJ) : $(OBJ).c


clean:
	$(RM) *.o $(OBJ)

.PHONY: clean
