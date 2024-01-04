;ssize_t		ft_read(int fd, void *buf, size_t count)
section	.text
	global	ft_read
	extern	__errno_location

	ft_read:
		mov rax, 0
		syscall
		test rax, rax
		js error
		ret

	error:
		neg rax
		mov r8, rax
		call __errno_location wrt ..plt
		mov [rax], r8
		mov rax, -1
		ret