# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -g

# Source files
SRCS = main.c chunk.c memory.c debug.c value.c vm.c scanner.c compiler.c

# Object files (derived from the source files)
OBJS = $(SRCS:.c=.o)

# Output binary
TARGET = clox

# Default target
all: $(TARGET) clean-artifacts 

# Rule to build the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build artifacts
clean-artifacts:
	rm -f $(OBJS)

# Phony targets
.PHONY: all clean
