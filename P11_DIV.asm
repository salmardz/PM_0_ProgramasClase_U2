TITLE Introduccion 

;DESCRPICI�N 
;Objetivo: Introducci�n a la instrucci�n DIV
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
;		DIV: Dividie a dos operandos
;
;		Sintaxis:  DIV origen
;
;		La operaci�n se realiza con el operando eax y origen. 
;
;								origen
;			dividendo           divisor           cociente      residuo
;	           al            8bits(mem o reg)       al            ah
;	           ax           16bits(mem o reg)       ax            dx
;	           eax          32bits(mem o reg)       eax           edx 
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

	main11 PROC	
		;L�gica del Programa
	
		;El resultado de la divisi�n genera: cociente  y residuo


		;ejemplo con 8bits

		mov eax , 0 ;para "inicializar" el registro eax en cero y que no nos afecte su valor de inicio

		mov bl, 3

		mov al, 10  ;*************** --> mov eax, 10

		div bl ;division de 8bits

		; cociente estar� en ->> al
		; residuo estar� en ->> ah



		exit	
	
	main11 ENDP
	
	END main11
