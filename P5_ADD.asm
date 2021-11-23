TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Introducci�n a la instrucci�n ADD
;
; Autore(s):
;         Rodr�guez Nu�ez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
;
;		ADD: Suma dos operandos
;
;		Sintaxis:  ADD destino, origen
;
;		El resultado se almacena en destino
;
;		Aplica las mismas caracteristicas que MOV
;			- Los operandos deben tener el Mismo Tama�o("Tipo de Dato")
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
		;L�gica del Programa
	
		mov eax, 10

		;add destino, origen
		add eax, var2_P5   ; eax = 15

		exit	
	
	main5 ENDP
	
	END main5
