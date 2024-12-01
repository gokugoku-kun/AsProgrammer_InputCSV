@echo off
SET THEFILE=D:\Users\n9b01\Documents\develop\41_AsProgrammer_InputCSV\software\AsProgrammer.exe
echo Linking %THEFILE%
C:\FPC\3.2.2\bin\i386-win32\ld.exe -b pei-i386 -m i386pe  --gc-sections  -s --subsystem windows --entry=_WinMainCRTStartup    -o D:\Users\n9b01\Documents\develop\41_AsProgrammer_InputCSV\software\AsProgrammer.exe D:\Users\n9b01\Documents\develop\41_AsProgrammer_InputCSV\software\link1428.res
if errorlevel 1 goto linkend
C:\FPC\3.2.2\bin\i386-win32\postw32.exe --subsystem gui --input D:\Users\n9b01\Documents\develop\41_AsProgrammer_InputCSV\software\AsProgrammer.exe --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
