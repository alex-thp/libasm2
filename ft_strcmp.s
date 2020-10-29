section .text
	global _ft_strcmp
_ft_strcmp:
	mov bl, byte[rdi]
	cmp byte[rdi], 0
	je _end
	cmp byte[rsi], 0
	je _end
	cmp byte[rsi], bl
	je _loop
	jne _end
_loop:
	inc rdi
	inc rsi
	jmp _ft_strcmp
_end:
	sub bl, byte[rsi]
	movsx rax, bl
	ret
