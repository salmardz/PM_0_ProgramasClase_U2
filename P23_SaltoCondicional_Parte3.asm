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
cadena1_p23 db "Es Igual", 0
cadena2_p23 db "Es Diferente", 0

.code

	main23 PROC	
		;Lógica del Programa

		mov eax, 10  ;ingresado por el usuario

		cmp eax, 10

		; je  = salta si es igual
		; jne =  salta si NO es igual

		; jz = salta si es cero
		; jnz = salta si NO es cero

		; jg = salta si es mayor
		; jng = salta si NO es mayor
		
		; jl = salta si es menor
		; jnl = salta si NO es menor
		
		; jle = salta si es menor o igual
		; jnle  = salta si NO es menor o igual

		; if (condicion<<< saltos) {
		; instrucciones
		; }

		exit	
	
	main23 ENDP
	
	END main23

	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas más comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo