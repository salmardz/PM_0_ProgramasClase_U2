TITLE Saltos Incondicionales

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
cadena1_p20 db "Mensaje 1", 0
cadena2_p20 db "Mensaje 2", 0
cadena3_p20 db "Mensaje 3", 0
cadena4_p20 db "Mensaje 4", 0

.code

	main20 PROC	
		;Lógica del Programa

		; NO EXISTE CONDICIÓN PREVIA QUE DEBA CUMPLIRSE PARA EFECTUARSE EL SALTO
		; EN ESTE SENTIDO, SIEMPRE SE EJECUTA EL SALTO.

		; jmp ubi    ; donde ubi es la etiqueta asociada a la ubicación destino del salto

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
