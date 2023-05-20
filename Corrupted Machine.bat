@echo off
cls
color c7
SET /A num=50 + %random% %%51
echo ===================================================
echo		WARNING - SYSTEM CORRUPTION
echo ===================================================
echo This system (%ver%) &echo has been corrupted at %num% percent. If you want to, you shall give this prompt a code.
echo ====================================================================================
echo Do you want to give the prompt a code? [Y/N] &set /p consent=
if /i "%consent%" == "y" goto Codetyping
if /i "%consent%" == "n" goto bsod
: bsod
.\bsod.exe
exit
: Codetyping
.\Codetyper.bat
goto Again
: Again
@echo off
cls
color 4
SET /A num=50 + %random% %%51
echo ===================================================
echo		WARNING - SYSTEM CORRUPTION
echo ===================================================
echo This system (%ver%) &echo has been corrupted at %num% percent. If you want to, you shall give this prompt a code.
echo ====================================================================================
echo Do you want to give the prompt a code? [Y/N] &set /p consent=
if /i "%consent%" == "y" goto Codetyping
if /i "%consent%" == "n" goto bsod
