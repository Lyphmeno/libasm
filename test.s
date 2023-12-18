sys_write   equ 1
sys_exit    equ 60
sys_stdout  equ 1

[section .data]
    linebreak db 0x0A

[section .text]
global _start


return:
    ret
strlen:
    xor   eax, eax
s_loop:
    cmp   byte [rdi], 0 ; check if octet nul
    jz    return
    add   rdi, 1
    add   rax, 1
    jmp   s_loop

_start:
    pop   rbx
    pop   rsi
    dec   rbx
    jz    exit
top:
    mov   rdi, [rsp]
    call  strlen
    mov   edx, eax
    mov   eax, sys_write
    mov   edi, sys_stdout
    pop   rsi

    syscall
    mov   eax, sys_write
    mov   edi, sys_stdout
    mov   edx, 1
    syscall
    dec   rbx
    jnz   top
exit:
    mov   eax, sys_exit
    xor   edi, edi
    syscall