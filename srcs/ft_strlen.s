;ssize_t	ft_strlen(const char* s)
section .text
	global ft_strlen
	ft_strlen:
		xor rax, rax

	index:
		cmp byte [rdi + rax], 0
		je end
		inc rax
		jmp index

	end:
		ret 