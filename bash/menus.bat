@echo off
cls
:menu
color 80
date /t

echo Inicio de programa
echo ____MENU____
echo 1. Salvar lista de arquivos ocultos do sistema
echo 2. Salvar conteudo de Downloads e Documentos
echo 3. Iniciar o Wordpad 
echo 4. Abrir os temporarios da Unaerp
echo 5. Listar Processos Ativos
echo 6. Exibir informacoes de rede
echo 7. Exibir portas TCP e UDP em uso
echo 8. Exibir Tabela de Roteamento
echo 9. Sair
echo ____________
set /p opc=Escolha uma opcao:
set padrao="C:\users\%userdomain%\Desktop\so_aulas\menus.EXE"

pause
if %opc% equ 1 goto opc1
if %opc% equ 2 goto opc2
if %opc% equ 3 goto opc3
if %opc% equ 4 goto opc4
if %opc% equ 5 goto opc5
if %opc% equ 6 goto opc6
if %opc% equ 7 goto opc7
if %opc% equ 8 goto opc8
if %opc% equ 9 goto opc9 

:opc1
dir /a:h "C:\Users\%USERNAME%\Documents" > "C:\Users\%USERNAME%\Documents\ocultos.txt"
pause
goto menu

:opc2
if not exist "C:\Users\%USERNAME%\Desktop\secreto" mkdir "C:\Users\%USERNAME%\Desktop\secreto"
xcopy /T /C /H "C:\Users\%USERNAME%\Documents"*.*"C:\Users\%USERNAME%\Desktop\secreto"
xcopy /T /C /H "C:\Users\%USERNAME%\Dowloads"*.*"C:\Users\%USERNAME%\Desktop\secreto"
pause
goto menu

:opc3
Start "%ProgramFiles%\Windows NT\Accessories\wordpad.exe" 
pause
cls
goto menu

:opc4
explorer "\\SVRA-arquivos\Temporarios"
pause

:opc5
tasklist
pause
cls
goto menu

:opc6
ipconfig
pause
cls
goto menu

:opc7
netstat -a
pause
cls
goto menu

:opc8
netstat -r
pause
cls
goto menu

:opc9
exit