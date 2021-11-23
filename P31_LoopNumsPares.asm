TITLE instruccion LOOP

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
msj_p31 db "ingresa un numero: ",0


.code
	
	main31 PROC	
		;Lógica del Programa

		;LOOP Es una instrucción que nos permite generar ciclos, como si de un 
		; ciclo FOR se tratará.

		; En esta instrucción siempre se corroborá (compara) ECX y se decrementa 
		; de forma automática

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
					 ; si a ecx se le decrematará de 2 en 2 por cada iteracion
			loop ciclo

		exit	
	
	main31 ENDP
	
	END main31
