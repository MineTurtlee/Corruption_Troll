@echo off
cls
color 1f
set /a tries=3
echo ====================== CodeTyperBSOD ======================
echo Welcome to the BSOD Preventer! Here are the things that you will do here:
echo - Type in the code that is in "somewhere";
echo - Get the result if the code is valid! If not, your PC will be like:&echo BOOM!
echo ==========================================================
echo Are you ready? [Y/N]&set /p readycode=
if /i "%readycode%" == "n" goto again
if /i "%readycode%" == "exit" exit
if /i "%readycode%" == "y" goto type
: bsod
@echo off
ver | find "10." > nul
if %errorlevel% == 0 .\bsod10
ver | find "11." >nul
if %errorlevel% == 0 .\bsod11
goto badending
exit
: success
color 02
echo ===================================== Success ================================
echo	That's very good! How did you type the correct code? Don't tell me you looked inside!
echo ============================================================================
pause
goto goodending
: again
cls
echo ======================== Canceling ========================
echo 		Cancelling may lead to BSOD and more!
echo ========================================================
echo 		Are you sure that you want to exit?&set /p surequit=
if "%surequit%" == "y" goto bsod
if "%surequit%" == "n" goto type
: type
cls
echo ===================== Typing ======================
echo 	Type a code here so your Windows PC won't BSOD.
echo Code Here: &set /p code=
if /i "%code%" == "TurtleGame is the best" (
goto success
) else (
goto error )
if /i "%code%" == "Mknee" (
goto success
) else (
goto error )
if /i "%code%" == "I love Turtle" (
goto success
) else (
goto error )
 if /i "%code%" == "Windows11BSOD" (
goto success
) else (
goto error )
: goodending
cls
cscript .\GdEnding.vbs
: badending
cls
cscript .\bdending,vbs
: Error
cls
@echo off
set /a tries-=1
if "%tries%" == "0" (
goto bsod ) else (
echo ============================= Error ==========================
echo 			Error! You have %tries% tries left
pause
goto type )
if "%tries%" <= "0" (
goto bsod ) else (
echo ============================= Error ==========================
echo 			Error! You have %tries% tries left
pause
goto type )