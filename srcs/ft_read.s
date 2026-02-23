;ssize_t		ft_read(int fd, void *buf, size_t count);
BITS 64

section .text
  global ft_read
  extern __errno_location

ft_read:
  mov rax, 0
  syscall

  cmp rax, 0
  jl handle_error
  ret

  handle_error:
    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], edi
    mov rax, -1
    ret

section .note.GNU-stack