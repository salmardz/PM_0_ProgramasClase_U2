TITLE  

;DESCRPICI�N 
;Objetivo: 
;
; Autore(s):
;         Rodr�guez Nu�ez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
msj_p38_pregunta db "Bienvenido!! :D  ", 0 

msj_R1_p38 db "10 - Refresco 1 - Precio : ", 0
msj_R2_p38 db "12 - Refresco 2 - Precio : ", 0
msj_R3_p38 db "15 - Refresco 3 - Precio : ", 0

; 1.- Configuracion (Cod: 512)
; 2.- Modo de Trabajo (Siempre)
; 3.- Apagar (Cod: 200)


cantRefresco1 dword 10


.code
	
	main38 PROC	
		;L�gica del Programa

		continuar: ;;;;;;INICIO DEL PROGRAMA

		;;;DESPLIGUE DE MENSAJES 

		mov edx, offset msj_p38_pregunta
		call writestring
		call crlf
		call crlf

		mov edx, offset msj_R1_p38
		call writestring                 ;MENSAJE DEL REFRESCO 1
		mov eax, 5                       ;COSTO DEL REFRESCO 1
		call writedec
		call crlf

		mov edx, offset msj_R2_p38
		call writestring
		mov eax, 10 
		call writedec
		call crlf

		mov edx, offset msj_R3_p38
		call writestring
		mov eax, 8
		call writedec
		call crlf

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		call readint  ; eax   ; OPCI�N DEL USUARIO 

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		cmp eax, 10
		jnz compararRefresco2
			; es igual a 0
			;;;;; c�digo necesario para vender el refresco 1.

			mov eax, 1
			call writedec

			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp continuar
		compararRefresco2:
			cmp eax, 12
			jnz compararRefresco3

				;es igual a 0
				;;;;; c�digo necesario para vender el refresco 2.

				mov eax, 2
				call writedec
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp continuar
		compararRefresco3:
			cmp eax, 15
			jnz compararConfiguracion

			;es igual a 0
			;;;;; c�digo necesario para para vender el refresco 3.

			mov eax, 3
			call writedec
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp continuar
		compararConfiguracion:			
			cmp eax, 512
			jnz compararApagar

			;es igual a 0
			;;;;; c�digo necesario para comenzar la configuracion del sistema.

			mov eax, 512
			call writedec

			; Esto deb�r�a estar condicionado.... 
			add cantRefresco1, 5

			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp continuar
		compararApagar:
			cmp eax, 200
			jnz codigoNoValido

			;es igual a 0
			;;;;; c�digo necesario para comenzar el apagado del sistema.

			mov eax, 200
			call writedec
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp salir
		codigoNoValido:

			mov eax, 9999
			call writedec

			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			jmp continuar


		salir:

		exit	
	
	main38 ENDP
	
	END main38

	
