# Makefile for BetaAI.
#
# Copyright (C) 2016 liwei<dreamflyliwei9@hotmail.com>
#
# This is free software, licensed under liwei<dreamflyliwei9@hotmail.com> .
# Everyone can copy and modify it.
#

TARGET = BetaAI
OBJ = BetaAI.o

CC ?= gcc
STRIP ?= strip
CFLAGS = -g -Wall -O2
LDFLAGS =

VERBOSE = 1
ifdef VERBOSE
Q =
else
Q = @
endif

all: $(TARGET)
	@echo compile target \( $(TARGET) \) done.

$(TARGET): $(OBJ)
	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) -o $@

%.o: %.c
	$(Q)$(CC) $(CFLAGS) $(LDFLAGS) -c $^ -o $@

release: all
	@echo strip $(TARGET)
	$(Q)$(STRIP) -s $(TARGET)

clean:
	@echo clean $(TARGET) $(OBJ)
	$(Q)$(RM) $(TARGET) $(OBJ)

.PHONY: release clean
