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
	
	main34 PROC	
		;L�gica del Programa

		; SOLUCI�N DEL PROBLEMA MEDIANTE EL USO DE LA PILA (STACK) y LOOP

		mov ebx, 1  ; contador que ira de 1 al 10		

		mov ecx, 10 ; contador del ciclo (cuantas iteraciones)

		ciclo1:
			mov eax, ebx  ; cargamos en el registro eax el valor que ser� imprimido

			push ecx ; guarda el valor de ecx en la pila
			
			
			mov ecx, 10 ; utiliza el registro ecx como contador para el ciclo 2
						
			
			ciclo2:
				call writedec  ; desplegamos el valor	
				call crlf

				loop ciclo2

			pop ecx ; sacamos el ultimo valor guardado en la pila y lo colocamos en ecx

			inc ebx
			
			loop ciclo1
		
		exit	
	
	main34 ENDP
	
	END main34

	
