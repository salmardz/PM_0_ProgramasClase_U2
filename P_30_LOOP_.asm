TITLE instruccion LOOP

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
	
	main30 PROC	
		;L�gica del Programa

		;LOOP Es una instrucci�n que nos permite generar ciclos, como si de un 
		; ciclo FOR se tratar�.

		; En esta instrucci�n siempre se corrobor� (compara) ECX y se decrementa 
		; de forma autom�tica

		mov ecx, 10

		ciclo:
			mov eax, ecx
			call writedec
			call crlf

			loop ciclo

		exit	
	
	main30 ENDP
	
	END main30
