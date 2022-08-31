rem mes.bat
@echo off
cls
echo Inicio de programa
mesdoano.exe
if %errorlevel%==12 echo Dezembro
if %errorlevel%==11 echo Novembro
if %errorlevel%==10 echo Outubro
if %errorlevel%==9 echo Setembro
if %errorlevel%==8 echo Agosto
if %errorlevel%==7 echo Julho
if %errorlevel%==6 echo Junho
if %errorlevel%==5 echo Maio
if %errorlevel%==4 echo Abril
if %errorlevel%==3 echo Março
if %errorlevel%==2 echo Fevereiro
if %errorlevel%==1 echo Janeiro
timeout /t 10
////////////////////////////////////////////////////

//mesdoano.c
#include <stdio.h>

int main (){
	int mes;
	do{
		printf (" informe o numero do mes desejado [1 a 12]: ");
		scanf ("%d",&mes);
		if (mes > 0  && mes <13)
			return mes;
		else
			printf ("Valor digitado invalido\n");

	}while (mes<1 || mes > 12);

}
