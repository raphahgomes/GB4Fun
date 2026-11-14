@echo off
color 0F
title Servidor GB4Fun
@setlocal enableextensions
@cd /d "%~dp0"


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Solicitando privilegios de administrador...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------


set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Ligar Servidor GB4Fun.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0\Ligar.bat" >> %SCRIPT%
echo oLink.Arguments = "" >> %SCRIPT%
echo oLink.IconLocation = "%~dp0\icone.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%


taskkill /F /IM httpd_gb.exe >nul 2>&1


::IDENTIFICA SE O PYTHON ESTA INSTALADO, SE SIM LIGA O CONTINUA, SE NAO INSTALA O PYTHON
set PY_CMD=
where py >nul 2>&1
if %errorlevel% equ 0 (
set PY_CMD=py
) else (
where python >nul 2>&1
if %errorlevel% equ 0 (
set PY_CMD=python
)
)
if "%PY_CMD%"=="" (
title Instale o Python!
color 4F
echo ==============================================================================
echo  O Python nao esta instalado...
echo  Vamos instala-lo, e depois tentamos novamente....
echo ==============================================================================
echo.
echo Aperte ENTER para instalar o Python!
pause
start SoftwaresNecessarios\Python-3.9.6.exe
echo.
echo Depois que finalizar a Instalacao do Python volte aqui e aperte ENTER para continuar...
pause
test&cls
Ligar.bat
)

::IDENTIFICA SE O WINRAR ESTA INSTALADO, SE SIM LIGA O CONTINUA, SE NAO INSTALA O WINRAR
>nul 2>nul assoc .rar
if errorlevel 1 (
title Instale o WinRAR!
color 4F
echo ==============================================================================
echo  O WinRAR nao esta instalado...
echo  Vamos instala-lo, e depois tentamos novamente....
echo ==============================================================================
echo.
echo Aperte ENTER para instalar o WinRAR!
pause
start SoftwaresNecessarios\WinRAR-602br.exe
echo.
echo Depois que finalizar a Instalacao do WinRAR volte aqui e aperte ENTER para continuar...
pause
test&cls
Ligar.bat
)

echo ==============================================================================
echo  Ligando o servidor GB4Fun...
echo ==============================================================================

if not exist "c:\GB4Fun\" (
echo  Verificando requisitos minimos...
echo  Na primeira inicializacao voce precisa de internet
echo.
%PY_CMD% -m pip install --upgrade pip
%PY_CMD% -m pip install altgraph==0.16.1
%PY_CMD% -m pip install future==0.17.1
%PY_CMD% -m pip install macholib==1.11
%PY_CMD% -m pip install pefile==2018.8.8
%PY_CMD% -m pip install PyInstaller==3.4
%PY_CMD% -m pip install pywin32-ctypes==0.2.0
%PY_CMD% -m pip install pycryptodome
mkdir c:\GB4Fun
)

::echo %ip%> c:\GB4Fun\IP.txt

if not exist c:\GB4Fun\mod_index.so (
copy HTTP\modules\mod_index.so c:\GB4Fun\
)
if not exist HTTP\client\ZIP_GunboundCliente.zip (
"%ProgramFiles%\WinRAR\UnRAR.exe" x -c- -cfg- -inul -o+ -y "HTTP\client\client.part01.rar" "HTTP\client\"
"%ProgramFiles(x86)%\WinRAR\UnRAR.exe" x -c- -cfg- -inul -o+ -y "HTTP\client\client.part01.rar" "HTTP\client\"
)
if not exist c:\GB4Fun\ZIP_GunboundCliente.zip (
copy HTTP\client\ZIP_GunboundCliente.zip c:\GB4Fun\
)
test&cls
start /min HTTP\bin\httpd_gb.exe
%PY_CMD% Scripts.py
taskkill /F /IM httpd_gb.exe >nul 2>&1
if errorlevel 1 (
:: DA UM AVISO DE ERRO NO CODIGO
title Erro do Script do Servidor
color 4F
echo.
echo.
echo.
echo ==============================================================================
echo  Verifique acima o codigo e alinha do erro
echo ==============================================================================
echo.
echo Corrija, volte aqui e APERTE ENTER!
pause
test&cls
Ligar.bat
)
