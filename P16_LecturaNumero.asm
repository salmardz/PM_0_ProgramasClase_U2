TITLE Introduccion 

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
;
; Autore(s):
;         Rodríguez Nuñez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
cadena1_p16 db "Ingresa un Numero: ", 0
cadena2_p16 db "El numero ingresado es: ", 0

.code

	main16 PROC	
		;Lógica del Programa
	
		mov edx, offset cadena1_p16  ; ingresa un numero
		call writestring

		call readint  ; lee un entero de 32bits con signo y lo almacena en EAX

		call crlf 
		call crlf 

		mov edx, offset cadena2_p16 ; el numero ingresado es: 
		call writestring
		
		call writeint


		exit	
	
	main16 ENDP
	
	END main16

