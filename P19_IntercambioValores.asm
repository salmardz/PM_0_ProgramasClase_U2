TITLE Intercambio de valores

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Rodríguez Nuñez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code

	main19 PROC	
		;Lógica del Programa
	
		;SWAP 
		; INTERCAMBIO DE VALORES ENTRE DOS VARIABLES

		; XCHG destino, origen

		; MISMAS REESTRICCIONES DE LA INSTRUCCIÓN MOV

		MOV eax, 20
		mov ebx, 10

		call writedec ; eax ; 20

		xchg eax, ebx    ; eax = ebx  y ebx = eax

		call crlf
		call writedec ; eax  ; 10



		

		exit	
	
	main19 ENDP
	
	END main19
