;void	ft_list_sort(t_list **begin_list, int (*cmp)())
section	.text
	global	ft_list_sort

	ft_list_sort:
		cmp qword [rdi], 0
		jz return1
		cmp qword rsi, 0
		jz return1
		mov rbx, rsi
		push rdi

	start:
		pop rdi
		mov r8, [rdi]
		push rdi

	iterate:
		mov r9, [r8 + 8]
		cmp r9, 0
		jz return2
		mov rdi, [r8]
		mov rsi, [r9]
		push r8
		push r9
		push rbx
		call rbx
		pop rbx
		pop r9
		pop r8
		cmp eax, 0
		jg swap
		mov r8, r9
		jmp iterate

	swap:
		mov r10, [r8]
		mov r11, [r9]
		mov [r8], r11
		mov [r9], r10
		jmp start

	return1:
		ret

	return2:
		pop rdi
		ret