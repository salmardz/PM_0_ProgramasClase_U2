TITLE Saltos Condicionales

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Rodríguez Nuñez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

;Obtener el número factorial del valor ingresado por el usuario
;valor : 5    -> 5x4x3x2x1      ->>  1x2x3x4x5 

.data
; Área de Declaración de Variables
msj1_p28 db "Ingresa un valor para calcular el factorial: ",0 
msj2_p28 db "El resultado es: ", 0

.code
	
	main28 PROC	
		;Lógica del Programa

		mov edx, offset msj1_p28
		call writestring

		call readint   ;eax

		call crlf

		mov ebx, eax  ;copiamos el valor en un registro aparte

		ciclo: 

		dec ebx

			mul ebx

		cmp ebx, 1
		jg ciclo

		
		mov edx, offset msj2_p28
		call writestring

		call writedec

		;Tarea (Programa) Fibonnaci
		
		exit	
	
	main28 ENDP
	
	END main28
