echo off

rem Warning: if the build fails then you have to add the MinGW bin folder into the path, for example:
rem          path=c:\Program Files (x86)\CodeBlocks\MinGW\bin;%path%

mingw32-gcc.exe -Wall -g  -c relay_ft245r.c -o relay_ft245r.o

mingw32-g++.exe  -o relay_ft245r.exe relay_ft245r.o FTD2XX.LIB


