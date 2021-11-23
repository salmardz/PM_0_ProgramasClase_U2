TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Introducci�n a la instrucci�n SUB
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
;		SUB: Resta dos operandos
;
;		Sintaxis:  SUB destino, origen
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

var2_P7 dword 5
var3_P7 sdword -5

.code

	main7 PROC	
		;L�gica del Programa
	
		mov eax, 10

		;sub destino, origen
		
		;sub eax, var2_P7   ; 10 - 5 =  eax = 5  --->>> minuendo, sustraendo

		;sub var2_P7, eax    ; 5 - 10 = var2_P7 = -5  --->>> minuendo, sustraendo


		sub eax, var3_P7  ; 10 -(-5) => 10 + 5 => eax = 15 --->>> minuendo, sustraendo

		;Conclusion: Se respetan las leyes de los signos 

		; El destino es el operando al que se le va a restar al sustraendo (origen),
		; almacenandos� el resultado de la operaci�n (resta) en el destino

		exit	
	
	main7 ENDP
	
	END main7
