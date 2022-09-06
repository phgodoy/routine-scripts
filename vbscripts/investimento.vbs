dim capital 
dim juros
dim tempoInvestimento
dim montante
dim remuneracao
dim juroXTempo

capital = inputbox ("Digite o valor a ser investido " )

juros = inputbox ("Digite a taxa de juros" )

tempoInvestimento =  inputbox ("Digite o tempo do investimento" )

juroXTempo = juros * tempoInvestimento 

remuneracao = capital * juroXTempo

montante = capital + capital  * juroXTempo
 

wscript.echo ("remuneracao:" & remuneracao)

wscript.echo ("montante:" & montante)
