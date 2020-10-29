extern	___error
SYS_READ_MAC equ 0x2000003
SYS_READ_LINUX equ 3
section .text
	global _ft_read
_ft_read:
	mov rax, SYS_READ_MAC
	syscall
	jc _error
	ret
_error:
	mov r10, rax
	call ___error
	mov qword [rax], r10
	mov rax, -1
	ret
