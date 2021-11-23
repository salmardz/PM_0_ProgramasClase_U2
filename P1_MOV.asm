TITLE Introduccion MOV

;DESCRPICI�N 
;Objetivo: Abordar a la instruccion MOV como parte de las instrucciones 
;			de Transferencia de Datos
;
; Autore(s):
;        Rodr�guez Nu�ez Salma
;	
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

;
; Instruccion MOV
;		Sintaxis
;				mov destino, origen    ;  var = valor
;
;
;		inmediatos (un n�mero o una letra), memoria, registros
;	
;
;		origen       / destino
;		
;		//6 / 09 / 2021
;		inmediato      inmediato  NO ES POSIBLE
;		inmediato      memoria
;       inmediato      registro
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
; �rea de Declaraci�n de Variables   --->>  MEMORIA
;
variable1_P1 dword 5d 

.code

	main1 PROC	
		;L�gica del Programa

	;		orig = inmediato      dest = inmediato  NO ES POSIBLE
	;mov 5, 10

	;		org = inmediato      dest = memoria

	;mov destino, origen
	
	mov variable1_P1, 10



	;      org = inmediato      dest = registro
		
		;mov destino, origen
	
		mov eax, 10

		exit	
	
	main1 ENDP
	
	END main1
