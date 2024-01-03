;ssize_t ft_write(int fd, const void *buf, size_t count)
section .text
    global ft_write
    extern __errno_location

    ft_write:
        mov rax, 1
        syscall
        test rax, rax
        js error
        ret

    error:
        neg rax
        mov r8, rax
        call __errno_location wrt ..plt
        mov [rax], r8
        mov rax, -1
        ret
