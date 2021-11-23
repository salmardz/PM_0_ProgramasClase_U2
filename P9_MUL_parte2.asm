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

	main9 PROC	
		;Lógica del Programa
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov eax, 5

		add eax, 2

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;mul 2   ;no puede ser un inmediato el origen
	
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		; recordar, hasta aqqui, eax vale 7


		;ecx no esta en este punto inicializo con un valor valido para el programa
		; sin embargo, por defecto cuenta con un valor. Esto puede llegar a ocasionar algunos
		; detalles al realizar la multiplicación

		mov cl, 2

		mul cl  ;parte baja de eax --> al, debido a que el operando origen es de 8bits/ 1 byte
				; -->> al * cl

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov ch, 2

		mul ch ;-->> al * ch    ....  ESO NO->> ah * ch

		; Que el operando sea cl o ch, no significa que se multiplicara sus analogos (al o ah) del operando eax,
		; sino que se operara con la parte baja de eax (al) debido a que ambas partes son de 8 bits. 

		; Es decir, que cuando origen sea de :

		;	8 bits, se multiplicara con al
		;  16 bits, se multiplicara con ax
		;  32 bits, se multiplicara con eax 

		exit	
	
	main9 ENDP
	
	END main9
