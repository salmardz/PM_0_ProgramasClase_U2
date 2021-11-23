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

var2_P6 dword -5  ; se puede, pero no es correcto

var3_P6 sdword -5   ; si al tipo de dato le anteponemos la "s", entonces este esta destinado para
					; trabajar con numeros con signo

.code

	main6 PROC	
		;L�gica del Programa
	
		mov eax, -4

		;add destino, origen
		add eax, var3_P6   ; eax = 5

		exit	
	
	main6 ENDP
	
	END main6
