TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Despliegue de n�meros por consola
;
; Autore(s):
;         Rodr�guez Nu�ez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
cadena1_p15 db "Resultado: ", 0
cadena2_p15 db " de Calificacion ", 0

.code

	main15 PROC	
		;L�gica del Programa
	
		mov edx, offset cadena1_p15
		call writeString		

		;;IMPRIMIR EL NUMERO
		mov eax, 7

		;call writeint ;imprime un numero de 32bits con signo. 
					  ;El NUMERO que se imprime DEBE estar contenido en EAX

		call writedec ;imprime un numero de 32bits SIN signo. 
		;El NUMERO que se imprime DEBE estar contenido en EAX


		mov edx, offset cadena2_p15
		call writeString

		call crlf
		
		exit	
	
	main15 ENDP
	
	END main15

