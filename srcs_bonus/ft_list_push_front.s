;void	ft_list_push_front(t_list** begin_list, void* data)
section	.text
	global	ft_list_push_front
	extern	malloc

	ft_list_push_front:
		push rsi
		push rdi
		mov rdi, 16
		sub rsp, 8
		call malloc wrt ..plt
		add rsp, 8
		pop rdi
		pop rsi
		cmp rax, 0
		jz return
		mov [rax], rsi
		mov rsi, [rdi]
		mov qword [rax + 8], rsi
		mov [rdi], rax

	return:
		ret