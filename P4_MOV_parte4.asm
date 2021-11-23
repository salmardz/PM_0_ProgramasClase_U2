TITLE Introduccion MOV

;DESCRPICI�N 
;Objetivo: Abordar a la instruccion MOV como parte de las instrucciones 
;			de Transferencia de Datos
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

;
; Instruccion MOV
;		Sintaxis
;				mov destino, origen    ;  var = valor
;
;		Validas:	
;				origen    / destino

;				inmediato a memoria
;				inmediato a registro

;				memoria a registro

;				registro a memoria
;				registro a registro
;				
;				Conclusiones:	
;				1.- destino no puede ser un inmediato
;				2.- no se puede de memoria a memoria

.data
; �rea de Declaraci�n de Variables   --->>  MEMORIA
;
variableB_P4 byte 5d 
variableW_P4 word 15d 
variableD_P4 dword 25d 

.code

	main4 PROC	

		mov eax, 40  ; inmediato a registro  ->> inicializando el registro en un valor valido para el programa

		;memoria a registro

		;mov eax, variableD_P4

		;mov eax, variableW_P4  ; NO SE PUEDE porque uno es de 32 y el otro de 16 bits

		;mov eax, variableB_P4  ; No se puede porque uno es de 32 y el otro es de 8bits


		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		; Dado que el 40 se puede representar en un unico byte, entonces, podemos solo 
		;mover la parte correspondiente al 40 a la variable byte

		; registro a memoria 

		mov variableB_P4 , al


		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


		mov eax, 260

		;mov variableB_P4 , al

		mov variableW_P4 , ax

		;Conclusi�n:  MOV solo puede mover a ubicaciones del mismo tama�o ("tipo de dato")
		; Es decir, origen y destino deben ser del mismo tama�o.

		exit	
	
	main4 ENDP
	
	END main4
