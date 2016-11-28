REM Assemble the source code into the object file
powerpc-eabi-as -mregnames -mgekko ../asm.as -o asm.ob

REM Copy the object file to the binary file
powerpc-eabi-objcopy -O "binary" asm.ob asm

REM Remove the object file
rm asm.ob

REM Display the binary file contents
C:\devkitPro\msys\bin\xxd -p asm

REM Remove the binary file
rm asm