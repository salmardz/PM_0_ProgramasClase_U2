TITLE Ciclos Anidados con Uso de Variables

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
contNum dword 1   ; contador que ira de 1 al 10		

.code
	
	main35 PROC	
		;Lógica del Programa

		; SOLUCIÓN DEL PROBLEMA MEDIANTE EL USO DE LA PILA (STACK) y LOOP con Uso de Variables

		mov ecx, 10 ; contador del ciclo (cuantas iteraciones)

		ciclo1:
			mov eax, contNum  ; cargamos en el registro eax el valor que será imprimido

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

	
