@echo off
rem *** covert all *.srt files in './src' folder from encoding CP1250 to UTF-8 with BOM

mkdir utf8
cd src
FOR %%i IN (*.srt) DO (
	copy BOM.bin "..\utf8\%%i" 
	iconv.exe -f CP1250 -t UTF-8 "%%i" >> "..\utf8\%%i"
)
cd ..
