################################################################################
# Makefile XYZ SR
################################################################################

CC = gcc
BIN_DIR = bin
OBJ_DIR = obj

# main
EXE = $(BIN_DIR)/calculate
SRC	= $(wildcard src/*.c)
INC = $(wildcard include/*.h)
OBJ = $(patsubst %.c, $(OBJ_DIR)/%.o, $(notdir $(SRC)))
CFLAGS = -Iinclude

# libs
LIB_ONE = lib/sum
SRC_LIB_ONE = $(wildcard $(LIB_ONE)/src/*.c)
INC_LIB_ONE = $(wildcard $(LIB_ONE)/include/*.h)
OBJ_LIB_ONE = $(patsubst %.c, $(OBJ_DIR)/%.o, $(notdir $(SRC_LIB_ONE)))
CFLAGS += -I$(dir $(INC_LIB_ONE))

LIB_TWO = lib/subtract
SRC_LIB_TWO = $(wildcard $(LIB_TWO)/src/*.c)
INC_LIB_TWO = $(wildcard $(LIB_TWO)/include/*.h)
OBJ_LIB_TWO = $(patsubst %.c, $(OBJ_DIR)/%.o, $(notdir $(SRC_LIB_TWO)))
CFLAGS += -I$(dir $(INC_LIB_TWO))

OBJECTS = 	$(OBJ) $(OBJ_LIB_ONE) $(OBJ_LIB_TWO)

.PHONY: all clean objs

all: $(EXE)

# Linking
$(EXE): $(OBJECTS) | $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

# Compilation
$(OBJ_LIB_ONE): $(SRC_LIB_ONE) $(INC_LIB_ONE) | $(OBJ_DIR)
	gcc -I$(dir $(INC_LIB_ONE)) -c $< -o $@

$(OBJ_LIB_TWO): $(SRC_LIB_TWO) $(INC_LIB_TWO) | $(OBJ_DIR)
	gcc -I$(dir $(INC_LIB_TWO)) -c $< -o $@

$(OBJ): $(SRC) $(INC) | $(OBJ_DIR)
	$(info CF: $(CFLAGS))
	$(CC) $(CFLAGS) -c $< -o $@

# Utility
$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR)