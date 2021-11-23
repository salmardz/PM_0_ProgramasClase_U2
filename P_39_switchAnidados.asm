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
msj_p39_pregunta db "Bienvenido!! :D  ", 0 

msj_R1_p39 db "10 - Refresco 1 - Precio : ", 0
msj_R2_p39 db "12 - Refresco 2 - Precio : ", 0
msj_R3_p39 db "15 - Refresco 3 - Precio : ", 0

; 1.- Configuracion (Cod: 512)
; 2.- Modo de Trabajo (Siempre)
; 3.- Apagar (Cod: 200)

;Cantidad de Refresco
cantRefresco1_p39 dword 20
cantRefresco2_p39 dword 15
cantRefresco3_p39 dword 10

;Precio de Refresco
precioRefresco1_p39 dword 5
precioRefresco2_p39 dword 8
precioRefresco3_p39 dword 10


;cantidad dineroMaquina
cantiDineroMaquina_p39 dword 100

;Mensajes para Configuracion
msjC_CantRef1_p39 db "1 - Modificar la cantidad del refresco 1", 0
msjC_CantRef2_p39 db "2 - Modificar la cantidad del refresco 2", 0
msjC_CantRef3_p39 db "3 - Modificar la cantidad del refresco 3", 0

msjC_PrecioRef1_p39 db "4 - Modificar el precio del refresco 1", 0
msjC_PrecioRef2_p39 db "5 - Modificar el precio del refresco 2", 0
msjC_PrecioRef3_p39 db "6 - Modificar el precio del refresco 3", 0

msjC_dineroMaquina_p39 db "7 - Modificar la cantidad de dinero de la maquina", 0

msjC_Salir_p39 db "8 - Salir de Configuracion", 0


.code
	
	main39 PROC	
		;L�gica del Programa

		continuar: ;;;;;;INICIO DEL PROGRAMA

		;;;DESPLIGUE DE MENSAJES 

		mov edx, offset msj_p39_pregunta
		call writestring
		call crlf
		call crlf

		mov edx, offset msj_R1_p39
		call writestring                 ;MENSAJE DEL REFRESCO 1
		mov eax, 5                       ;COSTO DEL REFRESCO 1
		call writedec
		call crlf

		mov edx, offset msj_R2_p39
		call writestring
		mov eax, 10 
		call writedec
		call crlf

		mov edx, offset msj_R3_p39
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

			;�Cu�ntos refrescos vas a querer...?
			; -- validar si se puede vender esa cantidad de refrescos

			; --- si se puede vender, entonces
			;		solicitamos el dinero por los refrescos (pudiera ingresarse por partes)
			;		se entrega el refresco cuando la cantidad de dinero sea igual o mayor que la necesaria para comprar los refrescos
			;		se calcula el cambio a entregar
			;		si se puede entregar el cambio, entonces se entrega y se actualiza el dinero de la maquina
			;		si no se puede entregar, entonce si al menos queda un refresco del tipo deseado por el usuario
			;			....se le entrega como cortes�a
			;		si no quedan refrescos en la maquina, y no se le puede dar el cambio, entonces solo se despliega 
			;			.... un mensaje de disculpa

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

			call crlf
			mov eax, 512
			call writedec
			call crlf 

			repiteCiclo:
			
			call crlf

			mov edx, offset msjC_CantRef1_p39
			call writestring
			call crlf
			mov edx, offset msjC_CantRef2_p39
			call writestring
			call crlf
			mov edx, offset msjC_CantRef3_p39
			call writestring
			call crlf

			mov edx, offset msjC_PrecioRef1_p39
			call writestring
			call crlf
			mov edx, offset msjC_PrecioRef2_p39
			call writestring
			call crlf
			mov edx, offset msjC_PrecioRef3_p39
			call writestring
			call crlf

			mov edx, offset msjC_dineroMaquina_p39
			call writestring
			call crlf

			mov edx, offset msjC_salir_p39
			call writestring
			call crlf

			;;;;;;;;;;;;;;;;

			call readint    ; lectura del valor del usuario para realizar la configuracion
			;se guarda en eax

			call crlf

			cmp eax, 1
			jnz compararCod2
				; aqui va el procedimiento cuando sea codigo 1 ; Modificar Cantidad Refresco 1
				
				;se le va a preguntar al usuario cuantos refrescos desea a�adir (considerando que nuestra
				; m�quina es muy grande y no tiene limite)

				; se a�ade la cantidad de refrescos indicada por el usuario al tipo de rerfresco 1 

				mov eax, 1
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod2:
			cmp eax, 2
			jnz compararCod3
				; aqui va el procedimiento cuando sea codigo 2 Modificar Cantidad Refresco 2
				
				mov eax, 2
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod3:
			cmp eax, 3
			jnz compararCod4
				;aqui va el procedimiento cuando sea codigo 3 Modificar Cantidad Refresco 3
				
				mov eax, 3
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod4:
			cmp eax, 4
			jnz compararCod5
				;aqui va el procedimiento cuando sea codigo 4  Modificac��n del precio del Refresco 1
				
				;preguntar al usuario el nuevo precio del refresco
				; modificar el precio del refreso por el nuevo precio ingresado por el usuario

				mov eax, 4
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod5:
			cmp eax, 5
			jnz compararCod6
				;aqui va el procedimiento cuando sea codigo 5
				
				mov eax, 5
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod6:
			cmp eax, 6
			jnz compararCod7
				;aqui va el procedimiento cuando sea codigo 6
				
				mov eax, 6
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod7:
			cmp eax, 7
			jnz compararCod8
				;aqui va el procedimiento cuando sea codigo 7
				
				;preguntar al usuario la nueva cantidad de dinero en la maquina
				; modificar la cantidad de dinero en la maquina por la cantidad ingresada por el usuario

				mov eax, 7
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp repiteCiclo
			compararCod8:
			cmp eax, 8
			jnz noValido
				;aqui va el procedimiento cuando sea codigo 8
				
				; desplegar un mensaje de salida. Ej.  Saliendo del modo de configuraci�n..

				mov eax, 8
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				jmp continuar
			noValido:
				;aqui va el procedimiento cuando sea un codigo no valido

				
				mov eax, 88888
				call writedec
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

				jmp repiteCiclo
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			
		compararApagar:
			cmp eax, 200
			jnz codigoNoValido

			;es igual a 0
			;;;;; c�digo necesario para comenzar el apagado del sistema.

			; desplegar un mensaje de salida. Ej.  Gracias por usar nuestra m�quina..

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
	
	main39 ENDP
	
	END main39

	
