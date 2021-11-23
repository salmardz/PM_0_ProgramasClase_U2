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

.data
; Área de Declaración de Variables
cadena1_p22 db "Es Igual", 0
cadena2_p22 db "Es Diferente", 0

.code

	main22 PROC	
		;Lógica del Programa

		mov eax, 10  ;ingresado por el usuario

		cmp eax, 10


		; con signo:   je  -> Salta si es igual 
		; sin signo:   jz  -> Salta si es cero

		jz esIgual
			;camino del no (NO ES CERO)
			mov edx, offset cadena2_p22
			call writestring
			jmp continuar

		esIgual:
			mov edx, offset cadena1_p22
			call writestring

		continuar:

		exit	
	
	main22 ENDP
	
	END main22

	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas más comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo