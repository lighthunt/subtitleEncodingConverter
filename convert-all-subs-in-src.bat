@echo off
rem *** covert all *.srt files in this folder from encoding CP1250 to UTF-8 with BOM

mkdir utf8
FOR %%i IN (src\*.srt) DO (
	copy BOM.bin utf8\%%i 
	iconv.exe -f CP1250 -t UTF-8 "%%i" >> "utf8\%%i"
)