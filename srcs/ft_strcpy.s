;char		*ft_strcpy(char *dest, const char *src);
BITS 64

section .text
  global ft_strcpy

ft_strcpy:
  xor rax, rax

  .loop:
    cmp byte [rsi + rax], 0
    je .end
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    inc rax
    jmp .loop

  .end:
    mov byte [rdi + rax], 0
    mov rax, rdi
    ret

section .note.GNU-stack