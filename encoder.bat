@echo off                                             
cd bin
set /p EVENT="enter event code: EX: TOR   "
set /p FIPS="enter fips code/s: EX1: 040145 EX2: 040145-040147   "
set /p TIME="enter duration hhmm: EX:0030   "
start /w bash.exe ./message
bash.exe ./encode %EVENT% %FIPS% %TIME%
move message.txt .
