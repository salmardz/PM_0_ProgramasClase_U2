TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Despliegue de texto por consola
;
; Autore(s):
;         Rodr�guez Nu�ez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
cadena1_p14 db "Hola Mundo", 0
cadena2_p14 db " Sean Bienvenidos TODOS !! ", 0

.code

	main14 PROC	
		;L�gica del Programa
	
		mov edx, offset cadena1_p14
		call writeString

		call crlf

		mov edx, offset cadena2_p14
		call writeString
		
		exit	
	
	main14 ENDP
	
	END main14


	;UNIDAD 2
	;Tarea 1 (Programa). Realizar el despliegue de una presentacion (linea a linea) para el equipo
