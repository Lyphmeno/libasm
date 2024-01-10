;int     ft_atoi_base(char* str, char* base)
section	.text
	global	ft_atoi_base

	;________________________PARSING____________________
	parse_err:
		push	rbp
		mov		rbp, rsp
		xor		rax, rax
		mov		r8, rdi

	parse_err_1:
		mov		al, BYTE [rdi]
		cmp		al, 0
		je		parse_no_err
		cmp		al, 9
		je		parse_err_stop
		cmp		al, 10
		je		parse_err_stop
		cmp		al, 11
		je		parse_err_stop
		cmp		al, 12
		je		parse_err_stop
		cmp		al, 13
		je		parse_err_stop
		cmp		al, ' '
		je		parse_err_stop
		cmp		al, '-'
		je		parse_err_stop
		cmp		al, '+'
		je		parse_err_stop
		xor		cl, cl
		mov		rsi, r8

	parse_err_2:
		mov		ah, BYTE [rsi]
		cmp		ah, 0
		je		parse_err_loop1
		mov		ah, BYTE [rdi]
		mov		al, BYTE [rsi]
		cmp		ah, al
		jne		parse_err_loop2
		cmp		ch, cl
		je		parse_err_loop2
		jmp		parse_err_stop

	parse_err_loop2:
		inc		rsi
		inc		cl
		jmp		parse_err_2

	parse_err_loop1:
		inc		rdi
		inc		ch
		jmp		parse_err_1

	parse_no_err:
		xor		rax, rax
		mov		al, ch

	parse_err_end:
		leave
		ret

	parse_err_stop:
		mov		rax, -1
		jmp		parse_err_end

	;_____________________SEARCH________________________
	search:
		push	rbp
		mov		rbp, rsp
		mov		rsi, rdi
		xor		rdx, rdx
		xor		rax, rax

	search_spaces:
		lodsb
		cmp		al, ' '
		je 		search_spaces
		cmp		al, 9
		je 		search_spaces
		cmp		al, 10
		je 		search_spaces
		cmp		al, 11
		je 		search_spaces
		cmp		al, 12
		je 		search_spaces
		cmp		al, 13
		je 		search_spaces
		jmp		search_mult

	search_mult_neg:
		not		rdx

	search_mult_lodsb:
		lodsb

	search_mult:
		cmp		al, '-'
		je 		search_mult_neg
		cmp		al, '+'
		je		search_mult_lodsb
		cmp		rdx, -1
		je 		search_end
		inc		rdx

	search_end:
		dec		rsi
		mov		rax, rdx
		leave
		ret

	;______________________TEST________________________
	testing:
		push	rbp
		mov		rbp, rsp
		xor		rcx, rcx

	testing_next:
		lodsb
		cmp		al, 0
		je 		testing_error
		cmp		al, ah
		je 		testing_success
		inc		rcx
		jmp		testing_next

	testing_success:
		mov		rax, rcx
		sub		rsi, rcx
		dec		rsi

	testing_end:
		leave
		ret

	testing_error:
		mov		rax, -1
		jmp		testing_end
	
	;______________________ATOI________________________
	ft_atoi_base:
		push	rbp
		mov		rbp, rsp
		push	rdi
		push	rsi
		mov		rdi, rsi
		call	parse_err
		pop		rsi
		pop		rdi
		cmp		rax, 2
		jl		_error
		push	rax
		push	rsi
		call	search
		pop		rdi
		pop		rdx
		push	rax
		push	rdx
		xor		rax, rax
		xchg	rdi, rsi
		push	rax

	ft_atoi_base_next:
		xor		rax, rax
		mov		ah, BYTE [rdi]
		inc		rdi
		push	rdi
		call	testing
		pop		rdi
		pop		rdx
		pop		r8
		pop		r9
		xchg	rdx, rax
		cmp		rdx, -1
		je		_success
		push	rdx
		sub		rsp, 8
		mul		r8
		add		rsp, 8
		pop		rdx
		add		rax, rdx
		push	r9
		push	r8
		push	rax
		jmp		ft_atoi_base_next

	;______________________ENDS________________________
	_error:
		mov		rax, 0
		jmp		_end
		
	_success:
		mul		r9

	_end:
		leave
		ret