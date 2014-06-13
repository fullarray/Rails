@ECHO OFF
	cls
	:start
	echo.
	echo ******************************************
	echo |	Author: Jonathan Herrera 			  |
	echo |	Licence: Free					      |
	echo |  Known issues: Not tested in many PCs  |
	echo |  Disclaimer: Everyone is permitted to  |
	echo |              copy and distribute 	  |
	echo |				verbatim copies of this   |
	echo | 				program, but you may not  |
	echo |              alter it, use it in       |
	echo | 				commercial products       |
	echo | 				without the express       |
	echo | 				written permission		  |
	echo |				of Jonathan Herrera		  |
	echo ******************************************
	echo.
	echo.
	echo ******************************************
	echo * Welcome to Removing Your MySQL Service *
	echo ******************************************
	echo.
	echo Instructions
	echo.
	echo Press 1 to disable and remove MySQL from your computer NOT USB
	echo Press 2 if you don't like me and want to close.
	echo.
	set /p choice=Type any key or ENTER to disable and remove MySQL: 
	echo.
	if '%choice%'=='' echo "%choice%" is not valid please try again.
	if '%choice%'=='1' goto remove
	if '%choice%'=='2' goto end
	if '%choice%'=='3' goto start
	echo.
	:remove
	echo.
	echo Removing services
	net stop MySQL
	echo ...
	echo ..
	echo .
	sc config "MySQL" start= disabled
	echo ....wait a little longer. Disabling MySQL instance on host computer
	echo ...
	echo ..
	echo .
	sc delete MySQL
	echo ....wait sometime. Removing MySQL service in host computer.
	echo ...
	echo ..
	echo .
	echo Go ahead start your MySQL instance on you USB drive.
	echo.
	goto end
	:end
	echo Ending batch.
	echo.
	pause
EXIT