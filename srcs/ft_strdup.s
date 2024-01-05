;char		*ft_strdup(const char *str1)
section	.text
	global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern malloc

	ft_strdup:
		call ft_strlen
		inc rax
		push rdi
		mov rdi, rax
		call malloc wrt ..plt
		js malloc_failed
		pop rsi
		mov rdi, rax
		call ft_strcpy
		ret
	
	malloc_failed:
		xor rax, rax
		ret