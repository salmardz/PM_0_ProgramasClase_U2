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
	
	main33 PROC	
		;L�gica del Programa

		; SOLUCI�N DEL PROBLEMA MEDIANTE EL USO DE LA PILA (STACK)

		mov ecx, 1  ; contador que ira de 1 al 10

		ciclo1:
			mov eax, ecx  ; cargamos en el registro eax el valor que ser� imprimido

			;mov edx, 1  ; contador para el ciclo 2   YA NO UTILIZADO
			push ecx ; guarda el valor de ecx en la pila
			
			
			mov ecx, 1 ; utiliza el registro ecx como contador para el ciclo 2
						
			
			ciclo2:
				call writedec  ; desplegamos el valor	
				call crlf

				inc ecx  
				cmp ecx, 10
				jle ciclo2

			pop ecx ; sacamos el ultimo valor guardado en la pila y lo colocamos en ecx

			inc ecx
			cmp ecx, 10
			jle ciclo1
		
		exit	
	
	main33 ENDP
	
	END main33

	; Tarea (Programa). Determinar si un numero es primo o no
