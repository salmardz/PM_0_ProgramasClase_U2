TITLE Saltos Condicionales

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
cadena1_p24 db "Es Igual", 0
cadena2_p24 db "Es Menor", 0
cadena3_p24 db "Es Mayor", 0

.code

	main24 PROC	
		;L�gica del Programa

		call readint  ;ingresado por el usuario

		cmp eax, 10

		jz EsIgual
			;camino del no (NO ES IGUAL)
			jl EsMenor
				;camino del no (NO ES MENOR)
				mov edx, offset cadena3_p24
				call writestring
				jmp continuar

		EsIgual:
			mov edx, offset cadena1_p24
			call writestring
			jmp continuar

		EsMenor:
			mov edx, offset cadena2_p24
			call writestring

		continuar: 

		
		exit	
	
	main24 ENDP
	
	END main24

	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas m�s comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo