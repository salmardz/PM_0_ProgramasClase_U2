TITLE instruccion LOOP

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Rodríguez Nuñez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code
	
	main30 PROC	
		;Lógica del Programa

		;LOOP Es una instrucción que nos permite generar ciclos, como si de un 
		; ciclo FOR se tratará.

		; En esta instrucción siempre se corroborá (compara) ECX y se decrementa 
		; de forma automática

		mov ecx, 10

		ciclo:
			mov eax, ecx
			call writedec
			call crlf

			loop ciclo

		exit	
	
	main30 ENDP
	
	END main30
