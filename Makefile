CC := gcc
CFLAGS := -Wall -Werror

SRCS := main.c big_integer.c
OBJS := $(SRCS:.c=.o)

TARGET := big_integer_operations

all: $(TARGET)

$(TARGET): $(OBJS)
    $(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f $(OBJS) $(TARGET)

.PHONY: all clean
