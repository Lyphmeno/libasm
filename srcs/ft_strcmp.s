;int	ft_strcmp(const char* str1, const char* str2)
section .text
	global ft_strcmp

	ft_strcmp:
		xor rcx, rcx
		xor rax, rax

	comp:
		movzx rax, byte [rdi + rcx]
		cmp byte [rdi + rcx], 0
		jz end
		cmp byte [rsi + rcx], 0
		jz end
		cmp al, byte [rsi + rcx]
		jne end
		inc rcx
		jmp comp

	end:
		sub al, byte [rsi + rcx]
		movsx rax, al
		ret