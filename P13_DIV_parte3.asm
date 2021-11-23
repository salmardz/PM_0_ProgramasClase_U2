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

	main13 PROC	
		;Lógica del Programa
	
		;El resultado de la división genera: cociente  y residuo


		;ejemplo con 32bits

		mov eax , 0 ;para "inicializar" el registro eax en cero y que no nos afecte su valor de inicio

		mov ebx, 3


		mov eax, 10


		mov edx, 0 ; inicializamos en cero, para evitar tener conflicto al momento de calcular el residuo


		div ebx ;division de 32bits

		; cociente estará en ->> eax
		; residuo estará en ->> edx


		;		NOTA AL TEMA: UNA VEZ QUE SE REALIZAN LAS OPERACIONES ARITMETICAS
		;		LOS REGISTROS DONDE SE ALMACENAN LOS RESULTADOS PIERDEN SUS VALORES PREVIOS, 
		;		SIN POSIBILIDAD DE RECUPERARSE..., EN ESTE SENTIDO, SE RECOMIENDA RESPALDAR LOS VALORES
		;		SI SE REQUIERE SEAN UTILIZADOS MÁS ADELANTE EN EL PROGRAMA

		; ADD A,B   ; A+B

		exit	
	
	main13 ENDP
	
	END main13
