TITLE Ciclos Anidados

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
	
	main32 PROC	
		;Lógica del Programa

		mov ecx, 1  ; contador que ira de 1 al 10

		ciclo1:
			mov edx, 1  ; contador para el ciclo 2 
			mov eax, ecx  ; cargamos en el registro eax el valor que será imprimido
			
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
