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
msj1_p25 db "Ingresa un numero: ", 0
msj2_p25 db "El numero es: ", 0
msj3_p25 db "PAR", 0
msj4_p25 db "IMPAR", 0

.code
	; determinar si un numero es par o impar   ... num se almacenar� en variable/registro de 32bits
	main25 PROC	
		;L�gica del Programa

		mov edx, offset msj1_p25
		call writestring   ; despliega el mensaje "Ingresa un numero"
		
		call readint ; eax  <- numero ingresado por el usuario

		call crlf  ; <- salto de linea

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset msj2_p25
		call writestring

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		;Como: cociente  = eax     residuo = edx , entonces->

		mov edx, 0  ; limpiar el registro para realizar la divisi�n sin problemas

		mov ebx, 2  ; divisor 

		div ebx     ; eax/ebx  --> numero / 2

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;el residuo es cero? 

		cmp edx, 0		
		 
		 ;NO PONER INSTRUCCIONES ADICIONALES

		jz esIgual  ;edx == 0 , por lo que el residuo ser�a 0
			;camino del no
			mov edx, offset msj4_p25
			call writestring       ;despliega: IMPAR

			jmp continuar

		esIgual:
			mov edx, offset msj3_p25
			call writestring         ;despliega: PAR


		continuar:
		
		exit	
	
	main25 ENDP
	
	END main25


	;Unidad 2:
	;Tarea 1 (Practica 1):  4 programas en documentacion (pendiente) / video (asignacion)

	;Tarea 2. Registro de Banderas   y las banderas m�s comunes
	
	;Tarea 3. Saltos Condicionales con Signo

	;Tarea 4. Saltos Condicionales sin Signo