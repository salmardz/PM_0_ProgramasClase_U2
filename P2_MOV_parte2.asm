TITLE Introduccion MOV

;DESCRPICIÓN 
;Objetivo: Abordar a la instruccion MOV como parte de las instrucciones 
;			de Transferencia de Datos
;
; Autore(s):
;         Rodríguez Nuñez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

;
; Instruccion MOV
;		Sintaxis
;				mov destino, origen    ;  var = valor
;
;
;		inmediatos (un número o una letra), memoria, registros
;	
;
;		origen       / destino
;	
;		//7 / 09 / 2021
;		memoria        inmediato  NO ES POSIBLE
;		memoria        memoria    NO SE PUEDE
;		memoria        registro   
;
;		registro	    inmediato NO ES POSIBLE
;		registro		memoria
;		registro        registro
;


.data
; Área de Declaración de Variables   --->>  MEMORIA
;
variable1_P2 dword 5d 

.code

	main2 PROC	
		;Lógica del Programa

	;		orig = memoria      dest = inmediato  ;NO VALIDA
	
			;mov 5, variable1_P2



	;		org = memoria      dest = memoria

	;mov destino, origen
	
	;mov variable1_P2, variable1_P2  No se puede



	   ;      org = memoria      dest = registro
		
		;mov destino, origen
	
		mov eax, variable1_P2  ; MISMO "TAMAÑO" DE DATOS 
		
		;ejemplo:
		;	dword  -> eax
		;	word   -> ax
		;	byte   -> ah  / al

		exit	
	
	main2 ENDP
	
	END main2
