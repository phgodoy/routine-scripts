@echo off
cls
:menu
date /t
echo Inicio de programa
echo ____MENU____
echo 1. Salvar lista de usuarios do equipamento e seus papeis.
echo 2. Salvar Lista de Diretorios contidos na raiz.
echo 3. Salvar a lista de processos em execuçao no momento. 
echo 4. Gerar um relatorio CSV
echo 5. Desligar o equipamento
echo 6. Sair
echo ____________
set /p opc=Escolha uma opcao:

::define variaveis de  suporte
set data=%date:~6,4%-%date:~3,2%-%date:~0,2%
set hora=%time:~0,2%:%time:~3,2%
set titulo=(%data%/%hora%)=

::Cria relatorio csv
if not exist ".\relatorios\computadores.csv" echo Nome do Computador;Dominio de Logon;Usuario conectado;Drive Raiz;Processador;Arquitetura;Qtd. Nucleos;Local do windows;>> ".\relatorios\computadores.csv"


if not exist ".\relatorios" mkdir ".\relatorios"
pause
if %opc% equ 1 goto opc1
if %opc% equ 2 goto opc2
if %opc% equ 3 goto opc3
if %opc% equ 4 goto opc4
if %opc% equ 5 goto opc5
if %opc% equ 6 goto opc6


:opc1
echo  %titulo% >> ".\relatorios\%COMPUTERNAME%-userslist.txt"
net users >> ".\relatorios\%COMPUTERNAME%-userslist.txt"
echo "Lista salva..."
pause
cls
goto menu

:opc2
echo  %titulo% >> ".\relatorios\%COMPUTERNAME%-dirlist.txt"
dir /a:h "C:\" >> ".\relatorios\%COMPUTERNAME%-dirlist.txt"
echo "Diretorios listados..."
pause
cls
goto menu  

:opc3
echo %titulo% >> ".\relatorios\%COMPUTERNAME%-pslist.txt"
tasklist >> ".\relatorios\%COMPUTERNAME%-pslist.txt"
echo "Processos listados e salvos..."
pause
cls
goto menu

:opc4
echo %COMPUTERNAME%;%logonserver%;%USERNAME%;%HOMEDRIVE%;%PROCESSOR_IDENTIFIER%;%PROCESSOR_ARCHITECTURE%;%PROCESSOR_LEVEL%;%windir% >>".\relatorios\computadores.csv"
echo "Processos listados e salvos no arrquivo..."
pause
cls
goto menu

:opc5
shutdown -s -t60
echo "Desligando a maquina..."
pause
cls
goto menu

:opc6
exit