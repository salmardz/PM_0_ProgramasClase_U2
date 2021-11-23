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
;
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

var1_P8 dword 5
var2_P8 sdword -5

.code

	main8 PROC	
		;Lógica del Programa
		
		;;;;;;;;;;;; EJEMPLO 1
		
		mov ebx, 2

		mov eax, 3

		mul ebx  ; eax = eax * ebx

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;;;;;;;;;;;; EJEMPLO 2

		;eax = 6

		mov ebx, -2

		mul ebx ;  eax = eax * ebx = -12

	
		exit	
	
	main8 ENDP
	
	END main8
