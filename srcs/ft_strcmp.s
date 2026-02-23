BITS 64

section .text
  global ft_strcmp

ft_strcmp:
  xor rax, rax

  .loop:
    mov dl, [rdi + rax]
    mov cl, [rsi + rax]
    cmp dl, cl
    je .equal
    movzx eax, dl
    movzx ecx, cl
    sub eax, ecx
    ret

  .equal:
    test dl, dl
    je .end
    inc rax
    jmp .loop

  .end:
    xor rax, rax
    ret

section .note.GNU-stack