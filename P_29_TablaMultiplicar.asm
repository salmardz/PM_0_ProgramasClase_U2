TITLE Saltos Condicionales

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Rodríguez Nuñez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

; "Imprimir" la tabla de multiplicar del numero ingresado por el usuario

.data
; Área de Declaración de Variables
msj1_p29 db "Que tabla quieres visualizar? ",0 

;ej:   5 x 1 = ?
;    tabla + " x " + contador + " = " + resultado

msj_operadorX_p29 db " x ", 0
msj_operadorIgual_p29 db " = ", 0


.code
	
	main29 PROC	
		;Lógica del Programa

		mov edx, offset msj1_p29
		call writestring  ; despliega el mensaje

		call readint  ; leer tabla   -> eax

		mov ebx, 1  ; registro usado como contador para la tabla

		ciclo:
			;incremento o decremento (puede ir aqui)

			;    tabla + " x " + contador + " = " + resultado

			call writedec   ; imprime el valor de la tabla

			mov edx, offset msj_operadorX_p29
			call writestring

			mov ecx, eax  ; respalda en ecx el valor de la tabla (eax)

			mov eax, ebx   ; guardamos en eax el valor del contador
			call writedec

			mov edx, offset msj_operadorIgual_p29
			call writestring 


			mul ecx    ; eax = eax(contador)  *  ecx(tabla)

			call writedec

			mov eax, ecx ; regresamos a eax el valor de ecx (valor de la tabla)

			call crlf


			;incremento o decremento (puede ir aqui)
			inc ebx
			cmp ebx, 10
			jle ciclo


		exit	
	
	main29 ENDP
	
	END main29
