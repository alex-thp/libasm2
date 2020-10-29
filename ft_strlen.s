section .text
	global _ft_strlen
_ft_strlen:
	mov rax, rdi
_calc:
	cmp byte[rax], 0
	je _end
	inc rax
	jmp _calc
_end:
	sub rax, rdi
	ret
