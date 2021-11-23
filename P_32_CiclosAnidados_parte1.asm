TITLE Ciclos Anidados

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Rodr�guez Nu�ez Salma
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables


.code
	
	main32 PROC	
		;L�gica del Programa

		mov ecx, 1  ; contador que ira de 1 al 10

		ciclo1:
			mov edx, 1  ; contador para el ciclo 2 
			mov eax, ecx  ; cargamos en el registro eax el valor que ser� imprimido
			
			ciclo2:
				call writedec  ; desplegamos el valor	
				call crlf

				inc edx  
				cmp edx, 10
				jle ciclo2

			inc ecx
			cmp ecx, 10
			jle ciclo1
		
		exit	
	
	main32 ENDP
	
	END main32
