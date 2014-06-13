@ECHO OFF
	cls
	:start
	echo.
	echo ****************************
	echo * Author: Jonathan H.			  
	echo * Licence: Free
	echo * Known issues:
	echo * Not tested in many PCs
	echo * Disclaimer:
	echo * Everyone is permitted to copy and distribute
	echo * verbatim copies of this program, but you may not
	echo * alter it or use it 'for commercial purposes'
	echo * without the express written permission
	echo * of Jonathan H.
	echo *****************************
	echo.
	echo.
	echo ******************************************
	echo * Welcome to Removing Your MySQL Service *
	echo ******************************************
	echo.
	echo Instructions
	echo.
	echo Press 1, any key, or ENTER to stop, disable, and remove MySQL from your computer NOT USB
	echo Press 2 if you don't like me and want to close.
	echo.
	set /p choice=Enter your selection: 
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
	echo Ending program.
	echo.
	pause
EXIT