extern	___error
SYS_WRITE_MAC equ 0x2000004
SYS_WRITE_LINUX equ 4
section .text
	global _ft_write
_ft_write:
	mov rax, SYS_WRITE_MAC
	syscall
	jc _error
	ret
_error:
	mov r10, rax
	call ___error
	mov qword [rax], r10
	mov rax, -1
	ret