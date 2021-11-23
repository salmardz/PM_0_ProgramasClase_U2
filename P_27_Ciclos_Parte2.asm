TITLE Saltos Condicionales

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Rodríguez Nuñez Salma;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

;calculo de la potencia (y) de un numero (x) ->> x^y 
;ejemplo si x = 2, y = 3  -> potencia =  2 * 2 * 2

.data
; Área de Declaración de Variables
msjx_p27 db "Dame el valor de x: ", 0 
msjy_p27 db "Dame el valor de y: ", 0
rest_p27 db "La potencia es: ", 0 

.code
	
	main27 PROC	
		;Lógica del Programa

		mov edx, offset msjx_p27
		call writestring    ; se despliega el mensaje para pedir x

		call readint   ; almacena en eax el valor ingresado por el usuario 

		call crlf ; salto de línea

		mov ecx, eax  ; respalda valor de eax en ecx
		
		;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset msjy_p27
		call writestring
		
		call readint

		call crlf

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		;; para este punto eax contiene la potencia y ecx contiene al numero

		;;eax  = potencia = cantidad de veces que el ciclo se tiene que repetir

		;;Consideraciones: Dentro del ciclo, se necesita hacer multiplicaciones
		; y las multiplicaciones necesitan que se trabaje al menos con el registro eax
		; debido a esto, conviene guardar la potencia en algun otro registro o variable

		; en este programa: posibles registros > ebx o edx

		mov ebx, eax  ; la potencia ahora esta en ebx

		mov eax, ecx ; posicionar el numero en eax , que será el registro que nos permitirá
		; hacer las multiplicaciones

		dec ebx  ; 

		ciclo:
			call writedec	
			call crlf

			mul ecx  ; multiplicar eax con ecx, siendo ecx el numero de origen


			;sub ebx, 1  ;ebx--
			dec ebx     ; ebx--

			cmp ebx, 0
			jg ciclo
			
		mov edx, offset rest_p27
		call writestring

		call writedec  ;


		; Tarea: Investigar porque mul modifica el registro edx

		; Tarea (Programa) 
		; Tarea (Programa)
		; Tarea (Programa)
		
		exit	
	
	main27 ENDP
	
	END main27
