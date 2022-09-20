'' Classes 
class vetorTop
    'variaveis
	Dim strMsg,inp01,strTitle,strFlag,vetor (25)
    private  pares   
    private  impares 
    private  media   
    private  soma    
    private  maior   
    private  menor   

	public function setVetor
		 for i = 0 to ubound (vetor) 
            vetor (i) = inputbox ("Digite o valor " & i + 1)
         next
        
         for each item in vetor
            wscript.echo item
         next
	end function
	
    public function countPares 
        for each item in vetor
            If (item And 1) = 0 Then
                     pares = pares + 1
            End If
        next
        wscript.echo "Numero pares:", pares
        countPares = pares
    end function

    public function countImpares
         for each item in vetor
            If (item And 1) = 1 Then
                    impares = impares + 1
            End If
        next
        wscript.echo "Numero impares:", impares
        countImpares = impares
    end function
    
    public function setMedia
        media = 0
        for each item in vetor
            media = media + item 
        next
        numero  =  UBound(vetor) 
        resultado = media / numero
        wscript.echo "Media  Aritimetrica: ", resultado
        setMedia = resultado
    end function
     
    public function setMaior
        maior = 0
        for each item in vetor
            If maior < item Then
                   maior = item
            End If  
        next
        wscript.echo "Maior Elemento: ", maior
        setMaior =  media
    end function
     
    public function setMenor
        menor = vetor (0) 
        for each item in vetor
            If menor > item Then
                   menor = item
            End If  
        next
        wscript.echo "Menor Elemento: ", menor
        setMenor = menor
    end function
    
    public function setSoma
        soma = 0
        for each item in vetor
            soma = soma + item 
        next
        wscript.echo "Soma: ", soma
        setSoma = soma
    end function
    
    public function setNegativo
        strNumNegativo = false
        for each item in vetor
            if item < 0 Then
                strNumNegativo = true
            End If    
        next 
        if strNumNegativo = true Then
             MsgBox "Exite Numeros Negativo"
        else
             MsgBox "Nao Exite Numeros Negativo"
        End If 
        setNegativo = strNumNegativo
    end function

    public function setCSV (info)
        
        'Criar um FSO FileSystemObject
        set FSO = createObject ("Scripting.FileSystemObject")

        const arquivo = "vetor.csv"

        set arq = FSO.createTextFile(arquivo, 2)
        ' 1 leitura , 2 escrita/sobrescrita, 8 append
        titulo = array( "B) Pares", "C) Impares", "D) Media", "E) Maior Elemento", "F) Menor Elemento", "G) Somatoria", "H) Elementos Negativos")
        n = 0 
        for each i in info
            arq.writeline  titulo(n) & "=" & i
            n = n + 1
        next
      
        arq.close

        wscript.echo "arquivo gerado"
    end function

end class

set vet = new vetorTop

' texto das opçoes
strTitle        = "VBS Vetores"
strMsg = strMsg & "A) Preencha o vetor" & vbCR
strMsg = strMsg & "B) Contagem de pares" & vbCR
strMsg = strMsg & "C) Contagem de impares" & vbCR
strMsg = strMsg & "D) A media aritmetica do vetor" & vbCR
strMsg = strMsg & "E) O maior elemento do vetor" & vbCR
strMsg = strMsg & "F) O menor elemento do vetor" & vbCR
strMsg = strMsg & "G) O somatorio dos elementos do vetor" & vbCR
strMsg = strMsg & "H) Verifique a existencia de elementos negativos no vetor" & vbCR
strMsg = strMsg & "I) Gerar .csv dos items B a H" & vbCR
strMsg = strMsg & "J) Sair" & vbCR

' opcoes do menu
Do While strFlag = False
inp01 = InputBox(strMsg,"Menu de Vetores")

'converte variavel para maiusculo
UpperCase = UCase(inp01)    

Select Case UpperCase
    Case "A"
        
       vet.setVetor
        
       strFlag = False
    Case "B" 

        vet.countPares

        strFlag = False
    Case "C"

        vet.countImpares

        strFlag = False

    Case "D"

        vet.setMedia

        strFlag = False
    Case "E"
        
        vet.setMaior

        strFlag = False
    Case "F"
        
        vet.setMenor

        strFlag = False
    Case "G"

        vet.setSoma
        
        strFlag = False
    Case "H"
        
        vet.setNegativo
   
        strFlag = False
    Case "I"

        info = array(CInt(vet.countPares),CInt(vet.countImpares), CDbl(vet.setMedia), CInt(vet.setMaior), CInt(vet.setMenor), CDbl(vet.setSoma), CBool(vet.setNegativo))
        vet.setCSV (info)
    
        strFlag = True
    Case "J"

        
        wscript.echo "Programa encerrado"

        strFlag = True         
    Case Else
        MsgBox "INFORME A LETRA DA OPCAO!!!",64,strTitle
End Select

Loop