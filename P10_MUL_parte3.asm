TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Introducci�n a la instrucci�n MUL
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
;		MUL: Multiplica a dos operandos
;
;		Sintaxis:  MUL origen
;
;		La operaci�n se realiza con el operando eax y origen. El resultado se almacena en eax
;		de acuerdo con el tipo de dato del operando origen. 
;
;
;		Aplica las mismas caracteristicas que MOV en cuanto al Mismo Tama�o
;				de los operandos("Tipo de Dato")
;			
;		- Movimientos validos:
;
;					origen -> destino

;					memoria a registro
;					registro a memoria
;					registro a registro
;					


.code

	main10 PROC	
		;L�gica del Programa
		
		;OJO:  No se inicializo a todo el registro eax, sin embargo en la multiplicacion se esta 
		; utilizando a todo, esto puede ocasionar algunos problemas. SE DEBE TENER CUIDAADO EN 
		; ESTAS SITUACIONES

		mov al, 3

		mov ebx, 2 

		mul ebx


		exit	
	
	main10 ENDP
	
	END main10
