TITLE Saltos Incondicionales

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
cadena1_p20 db "Mensaje 1", 0
cadena2_p20 db "Mensaje 2", 0
cadena3_p20 db "Mensaje 3", 0
cadena4_p20 db "Mensaje 4", 0

.code

	main20 PROC	
		;L�gica del Programa

		; NO EXISTE CONDICI�N PREVIA QUE DEBA CUMPLIRSE PARA EFECTUARSE EL SALTO
		; EN ESTE SENTIDO, SIEMPRE SE EJECUTA EL SALTO.

		; jmp ubi    ; donde ubi es la etiqueta asociada a la ubicaci�n destino del salto

		mov edx, offset cadena1_p20
		call writestring

		jmp continuar

		mov edx, offset cadena2_p20
		call writestring

		mov edx, offset cadena3_p20
		call writestring

		continuar: 
		
		mov edx, offset cadena4_p20
		call writestring
		

		exit	
	
	main20 ENDP
	
	END main20
