#!/bin/sh

# Compile the source to object code
./powerpc-eabi-as -mregnames -mgekko ../asm.as -o asm.o

# Build the binary from object code
./powerpc-eabi-objcopy -O "binary" asm.o asm

# Delete the object code file
rm asm.o

# Print out the hexadecimal binary file contents
xxd -p asm

# Remove the compiled binary
rm asm