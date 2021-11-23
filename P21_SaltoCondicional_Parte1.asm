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

.code

	main21 PROC	
		;L�gica del Programa

		; EXISTE UNA CONDICI�N PREVIA QUE DEBA CUMPLIRSE PARA EFECTUARSE EL SALTO
		; EN ESTE SENTIDO,NO SIEMPRE SE EJECUTA EL SALTO.

		; TIPO_SALTO ubi    ; donde ubi es la etiqueta asociada a la ubicaci�n destino del salto
							; tipo_salto es el tipo de salto que comprueba una condicion en particular

		; DEBE REVISARSE EL REGISTRO DE BANDERAS PARA COMPROBAR SI SE CUMPLE O NO UNA CONDICI�N

		MOV EAX, 10
		call dumpregs

		CMP EAX, 12  ; "COMPARA" SI DOS OPERANDOS SON IGUALES O SI UNO ES MAYOR O MENOR QUE EL OTRO
					 ; LA COMPARACI�N SE REALIZA APLICANDO UNA RESTA ENTRE LOS OPERANDOS, QUE NO 
					 ; MODIFICA LOS OPERANDOS, SIN EMBARGO, SI MODIFICA A LAS BANDERAS
		call dumpregs


		CMP EAX, 10
		call dumpregs

		CMP EAX, 5
		call dumpregs


		exit	
	
	main21 ENDP
	
	END main21


	;UNIDAD 1 -> BB
	;PROYECTO : video de VS
	;practica :  powerpoint /documentacion
	;Programas: nombre 

	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas m�s comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo