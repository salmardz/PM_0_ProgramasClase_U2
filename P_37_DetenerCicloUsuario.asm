TITLE Ciclos 

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
msj_p37_pregunta db "desea repetir el ciclo: (1: repetir, 0: salir)", 0 

.code
	
	main37 PROC	
		;L�gica del Programa

		ciclo:

			mov edx, offset msj_p37_pregunta
			call writestring

			call crlf

			call readint    ;eax

			;cmp eax, 1
			;jz ciclo  ; si es igual salta     ; para hacer preguntas

			jmp ciclo                          ; para repetir siempre


			

		exit	
	
	main37 ENDP
	
	END main37

	
