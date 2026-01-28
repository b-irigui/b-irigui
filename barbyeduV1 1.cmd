@echo off
REM CRIA PASTA TEMP--------------------------------------------------
if not exist c:\temp (
mkdir c:\temp
echo pasta temp criada
)

REM GOOGLE CHROME--------------------------------------------------
REM Variável da url de instalação

set url=https://dl.google.com/chrome/install/latest/chrome_installer.exe
echo Baixando Instalador Google Chrome...

powershell -Command Invoke-WebRequest -Uri '%url%' -OutFile c:\temp\ChromeSetup.exe

REM Verifica se o instalador foi baixado
IF EXIST c:\temp\ChromeSetup.exe (
echo Instalador baixado com sucesso.
echo Iniciando Instalação...
start "" c:\temp\ChromeSetup.exe /install
) ELSE (
echo ERRO: o instalador chrome não foi baixado.
pause
)

REM OPENVPN--------------------------------------------------
REM Variável da url de instalação

set url=https://swupdate.openvpn.net/community/releases/OpenVPN-2.6.14-I004-amd64.msi
echo Baixando Instalador ...

powershell -Command Invoke-WebRequest -Uri '%url%' -OutFile c:\temp\OpenVPN-2.6.14-I004-amd64.msi

REM Verifica se o instalador foi baixado
IF EXIST c:\temp\OpenVPN-2.6.14-I004-amd64.msi (
echo Instalador baixado com sucesso.
echo Iniciando Instalação...
msexec /i c:\temp\OpenVPN-2.6.14-I004-amd64.msi /qn /norestart
) ELSE (
echo ERRO: o instalador openvpn não foi baixado.
pause
)

REM NXCALLCENTER--------------------------------------------------
REM Variável da url de instalação

set url=https://smartnx.com/NXCallCenter.exe
echo Baixando Instalador ...

powershell -Command Invoke-WebRequest -Uri '%url%' -OutFile c:\temp\NXCallCenter.exe

REM Verifica se o instalador foi baixado
IF EXIST c:\temp\NXCallCenter.exe (
echo Instalador baixado com sucesso.
echo Iniciando Instalação...
start "" c:\temp\NXCallCenter.exe /install
) ELSE (
echo ERRO: o instalador nxcallcenter não foi baixado.
pause
)

REM TEAM VIEWER--------------------------------------------------
REM Variável da url de instalação

set url=https://download.teamviewer.com/download/version_13x/TeamViewer_Host_Setup.exe
echo Baixando Instalador ...

powershell -Command Invoke-WebRequest -Uri '%url%' -OutFile c:\temp\TeamViewer_Host_Setup.exe

REM Verifica se o instalador foi baixado
IF EXIST c:\temp\TeamViewer_Host_Setup.exe (
echo Instalador baixado com sucesso.
echo Iniciando Instalação...
start "" c:\temp\TeamViewer_Host_Setup.exe /install
) ELSE (
echo ERRO: o instalador team viewer não foi baixado.
pause
)

REM OVPN E CERTIFICADO--------------------------------------------------
REM curl -L -k -o certificado.pfx http://barinstall.smartnx.io/s/CyfDN4BdiWG7aFB/download/2025jump.pfx
REM curl -L -k -o jump.ovpn http://barinstall.smartnx.io/s/XADGozNNRTgLgQg/download/jump.ovpn

REM FINAL DA BAT--------------------------------------------------
echo Programas instalados com sucesso.
pause
exit