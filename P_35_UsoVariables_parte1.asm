TITLE Ciclos Anidados con Uso de Variables

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
contNum dword 1   ; contador que ira de 1 al 10		

.code
	
	main35 PROC	
		;L�gica del Programa

		; SOLUCI�N DEL PROBLEMA MEDIANTE EL USO DE LA PILA (STACK) y LOOP con Uso de Variables

		mov ecx, 10 ; contador del ciclo (cuantas iteraciones)

		ciclo1:
			mov eax, contNum  ; cargamos en el registro eax el valor que ser� imprimido

			push ecx ; guarda el valor de ecx en la pila
			
			
			mov ecx, 10 ; utiliza el registro ecx como contador para el ciclo 2
						
			
			ciclo2:
				call writedec  ; desplegamos el valor	
				call crlf

				loop ciclo2

			pop ecx ; sacamos el ultimo valor guardado en la pila y lo colocamos en ecx

			inc contNum
			
			loop ciclo1
		
		exit	
	
	main35 ENDP
	
	END main35

	
