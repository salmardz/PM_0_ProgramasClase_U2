TITLE Introduccion 

;DESCRPICIÓN 
;Objetivo: Introducción a la instrucción ADD
;
; Autore(s):
;         Rodríguez Nuñez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
;
;		ADD: Suma dos operandos
;
;		Sintaxis:  ADD destino, origen
;
;		El resultado se almacena en destino
;
;		Aplica las mismas caracteristicas que MOV
;			- Los operandos deben tener el Mismo Tamaño("Tipo de Dato")
;			- Movimientos validos:
;
;					origen -> destino
;					memoria a registro
;					registro a memoria
;					registro a registro
;					inmediato a memoria
;					inmediato a registro

var1_P5 word 5
var2_P5 dword 5

.code

	main5 PROC	
		;Lógica del Programa
	
		mov eax, 10

		;add destino, origen
		add eax, var2_P5   ; eax = 15

		exit	
	
	main5 ENDP
	
	END main5
