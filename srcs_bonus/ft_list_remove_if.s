;void	ft_list_remove_if(t_list** begin_list, void* data_ref, int (*cmp)(), void (*free_fct)(void *))
section	.text
	global	ft_list_remove_if

	ft_list_remove_if:
		cmp qword [rdi], 0
		jz return
		cmp rsi, 0
		jz return
		cmp rdx, 0
		jz return
		cmp rcx, 0
		jz return
		mov r8, [rdi]
		mov r9, 0

	iterate:
		cmp r8, 0
		jz return
		push rdi
		push rsi
		push rdx
		push rcx
		push r8
		mov rdi, [r8]
		call rdx
		pop r8
		pop rcx
		pop rdx
		pop rsi
		pop rdi
		cmp eax, 0
		jz remove
		mov r9, r8
		mov r8, [r8 + 8]
		jmp iterate

	remove:
		mov r10, r8
		mov r11, [r8 + 8]
		mov [r8], r11
		mov r8, r11
		cmp r9, 0
		jz first_elem
		mov [r9 + 8], r11
		jmp free

	first_elem:
		mov [rdi], r11
		jmp free

	free:
		push rdi
		push rsi
		push rdx
		push rcx
		push r8
		push r9
		mov rdi, r10
		call rcx
		pop r9
		pop r8
		pop rcx
		pop rdx
		pop rsi
		pop rdi
		jmp iterate

	return:
		ret