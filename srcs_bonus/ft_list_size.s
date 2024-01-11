;int	ft_list_size(t_list *begin_list)
section	.text
	global	ft_list_size

	ft_list_size:
		xor rax, rax

	iterate:
		cmp rdi, 0
		jz end
		inc rax
		mov rdi, [rdi + 8]
		jmp iterate

	end:
		ret