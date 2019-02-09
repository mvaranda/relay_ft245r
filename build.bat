echo off

rem    Warning: if the build fails then you have to add the MinGW bin folder into the path, for example:
rem    if you have codeblocks installed then:
rem          path=c:\Program Files (x86)\CodeBlocks\MinGW\bin;%path%
rem    if you have mingw installed from mingw.org:
rem          path=C:\MinGW\bin;%path%
rem
rem    Note: it seems that Mingw64 does not work even forcing to compile in 32bits due FTD2XX library linking.
rem    MinGW is available for free at: https://osdn.net/projects/mingw/downloads/68260/mingw-get-setup.exe/
rem          

mingw32-gcc.exe -Wall -g  -c relay_ft245r.c -o relay_ft245r.o

mingw32-g++.exe  -o relay_ft245r.exe relay_ft245r.o FTD2XX.LIB


