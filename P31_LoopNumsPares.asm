TITLE instruccion LOOP

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
msj_p31 db "ingresa un numero: ",0


.code
	
	main31 PROC	
		;L�gica del Programa

		;LOOP Es una instrucci�n que nos permite generar ciclos, como si de un 
		; ciclo FOR se tratar�.

		; En esta instrucci�n siempre se corrobor� (compara) ECX y se decrementa 
		; de forma autom�tica

		;PROGRAMA: IMPPRIMIR LOS NUMEROS PARES EXISTENTES ENTRE N Y 0
		; PARTIENDO DE MANERA DECRECIENTE. Donde N >= 0

		;N = 10

		;10 <- PAR O IMPAR? 
		;9 <- PAR O IMPAR?
		;8 <- PAR O IMPAR?
		;.
		;.
		;. 
		;0 <- PAR O IMPAR? 

		;;;ENTRADA DE DATOS

		mov edx, offset msj_p31
		call writestring

		call readint

		call crlf
		call crlf 

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		;eax dividendo 
		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division

		mov edx, 0   ; para evitar el overflow

		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
			;si no es cero ...
			dec ecx ;<- le restamos uno a ecx para que se convierta en par

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		ciclo:
			mov eax, ecx
			call writedec
			call crlf

			dec ecx  ;decremento adicional para que en acumulativo sea como
					 ; si a ecx se le decrematar� de 2 en 2 por cada iteracion
			loop ciclo

		exit	
	
	main31 ENDP
	
	END main31
