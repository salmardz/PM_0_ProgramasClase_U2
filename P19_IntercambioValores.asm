TITLE Intercambio de valores

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Rodr�guez Nu�ez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

.code

	main19 PROC	
		;L�gica del Programa
	
		;SWAP 
		; INTERCAMBIO DE VALORES ENTRE DOS VARIABLES

		; XCHG destino, origen

		; MISMAS REESTRICCIONES DE LA INSTRUCCI�N MOV

		MOV eax, 20
		mov ebx, 10

		call writedec ; eax ; 20

		xchg eax, ebx    ; eax = ebx  y ebx = eax

		call crlf
		call writedec ; eax  ; 10



		

		exit	
	
	main19 ENDP
	
	END main19
