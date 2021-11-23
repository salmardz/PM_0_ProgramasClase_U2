TITLE Introduccion MOV

;DESCRPICI�N 
;Objetivo: Abordar a la instruccion MOV como parte de las instrucciones 
;			de Transferencia de Datos
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
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
variable1_P3 dword 5d 

.code

	main3 PROC	
		;L�gica del Programa

	;		orig = registro      dest = inmediato  ;NO VALIDA
	
	;		mov 5, eax



	;		org = registro      dest = memoria

	;mov destino, origen
	
	;mov variable1_P3, eax 



	   ;      org = registro      dest = registro
		
		;mov destino, origen
	
		mov ebx,eax   ; MISMO "TAMA�O" DE DATOS 
		
		

		exit	
	
	main3 ENDP
	
	END main3
