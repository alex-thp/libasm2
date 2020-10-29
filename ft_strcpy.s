section .text
	global _ft_strcpy
_ft_strcpy:
	mov r9, rdi
_step_1:	
	cmp byte[rsi], 0
	je _end
	mov al, byte[rsi]
	mov byte[rdi], al
	inc rdi
	inc rsi
	jmp _step_1
_end:
	mov byte[rdi], 0
	mov rax, r9
	ret
