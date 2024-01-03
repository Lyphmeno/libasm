;char *strcpy(char *dest, const char *src)
section .text
    global ft_strcpy
    extern ft_strlen

ft_strcpy:
    push rdi
    mov rdi, rsi
    call ft_strlen
    pop rdi
    mov ecx, eax
    inc ecx
    mov rax, rdi
    rep movsb
    ret