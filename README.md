# relay_ft245r
Console app to control popular relay box based on FTDI's FT245R chip.

Dependency: requires D2XX drivers installed. Available at:
https://www.ftdichip.com/Drivers/D2XX.htm

# Build
Compiled with MinGW (original 32bits version). MinGW64 did not work even forcing -m32 option.

### MinGW is available at:
 https://osdn.net/projects/mingw/downloads/68260/mingw-get-setup.exe
 
 Select the dev toolkit and C++ compiler:
 
 ![MinGW packages selection](/images/mingw_1.png)
 ![MinGW install apply](/images/mingw_2.png)
 

Open a DOS console and "cd" to where you cloned this project. Then add MinGW into the path wit the command:
```
cd <where_you_clonned>
path=C:\MinGW\bin;%path%
```

then just run the batch file: build.bat
```
build.bat
```
# Run

Run the relay_ft245r.exe
To turn a relay on use the "r" command. For example, for turning relay 2 on type:
```
r 2 on
```
You can use "all" to operate all relays, for example:
```
r all off
```

# Limitations

The current code grabs the first FTDI device from the enumeration. If you have more FTDI products this code will not work. It also operates only one relay box.

# ToDo

Support multiple boxes.
