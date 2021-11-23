TITLE Introduccion 

;DESCRPICIÓN 
;Objetivo: Despliegue de números por consola
;
; Autore(s):
;         Rodríguez Nuñez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
cadena1_p15 db "Resultado: ", 0
cadena2_p15 db " de Calificacion ", 0

.code

	main15 PROC	
		;Lógica del Programa
	
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

