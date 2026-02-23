;ssize_t		ft_write(int fd, const void *buf, size_t count);
BITS 64

section .text
  global ft_write
  extern __errno_location

ft_write:
  mov rax, 1
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