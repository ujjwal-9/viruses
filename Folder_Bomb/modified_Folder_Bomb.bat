@echo off

set limit=2000

set var1=0

:CreateFolders

set /a var1=%var1%+1

md Spam\%var1%

echo CREATED : FOLDER (Spam\%var1%)

if %limit% equ 0 (

goto CreateFolders

)

if %var1% equ %limit% goto End

goto CreateFolders

:End

cls

title Limit Reached!

echo Limit Reached!

pause

cls

goto End