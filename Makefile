
# list of all the object files
OBJS = build/helloWorld.o
INCLUDE_DIR = include
SRC_DIR = src
OUT_DIR = build


# Override Default Variables
CC = gcc
CFLAG =  -c -Wall --std=c99 -g  -I$(INCLUDE_DIR)
LDFLAGS = 			# This is for -L flags, probably not used
LDLIBS = 			# This is for -l flags


# default rule is first
all: myProg

myProg: $(OBJS)
	$(CC) $^ -o $@ $(LDFLAGS) $(LDLIBS)


$(OBJS): $(OUT_DIR)/%.o: $(SRC_DIR)/%.c | $(OUT_DIR)
	$(CC) -c $(CFLAG) $< -o $@

$(OUT_DIR):
	mkdir -p $(OUT_DIR)



.PHONY: clean
clean:
	rm -f -r $(OUT_DIR) myProg
