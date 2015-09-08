@echo off
rem *** covert all in this folder to UTF-8 with BOM

mkdir utf8
FOR %%i IN (*.srt) DO (copy BOM.bin utf8\%%i 
 iconv.exe -f CP1250 -t UTF-8 "%%i" >> "utf8\%%i")