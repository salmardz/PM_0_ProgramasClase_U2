TITLE Introduccion 

;DESCRPICIÓN 
;Objetivo: Introducción a la instrucción MUL
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
;		MUL: Multiplica a dos operandos
;
;		Sintaxis:  MUL origen
;
;		La operación se realiza con el operando eax y origen. El resultado se almacena en eax
;		de acuerdo con el tipo de dato del operando origen. 
;
;
;		Aplica las mismas caracteristicas que MOV en cuanto al Mismo Tamaño
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
		;Lógica del Programa
		
		;OJO:  No se inicializo a todo el registro eax, sin embargo en la multiplicacion se esta 
		; utilizando a todo, esto puede ocasionar algunos problemas. SE DEBE TENER CUIDAADO EN 
		; ESTAS SITUACIONES

		mov al, 3

		mov ebx, 2 

		mul ebx


		exit	
	
	main10 ENDP
	
	END main10
