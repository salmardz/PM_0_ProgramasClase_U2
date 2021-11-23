TITLE Introduccion 

;DESCRPICIÓN 
;Objetivo: Introducción a la instrucción DIV
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
;		DIV: Dividie a dos operandos
;
;		Sintaxis:  DIV origen
;
;		La operación se realiza con el operando eax y origen. 
;
;								origen
;			dividendo           divisor           cociente      residuo
;	           al            8bits(mem o reg)       al            ah
;	           ax           16bits(mem o reg)       ax            dx
;	           eax          32bits(mem o reg)       eax           edx
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

	main12 PROC	
		;Lógica del Programa
	
		;El resultado de la división genera: cociente  y residuo


		;ejemplo con 16bits

		mov eax , 0 ;para "inicializar" el registro eax en cero y que no nos afecte su valor de inicio

		mov bx, 3

		mov ax, 10  ;*************** --> mov eax, 10


		mov edx, 0 ; inicializamos en cero, para evitar tener conflicto al momento de calcular el residuo

		div bx ;division de 16bits

		; cociente estará en ->> ax
		; residuo estará en ->> dx



		exit	
	
	main12 ENDP
	
	END main12
