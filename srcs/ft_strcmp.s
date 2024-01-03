;int         ft_strcmp(const char* str1, const char* str2)
section .text
    global ft_strcmp
    extern ft_strlen

    ft_strcmp:
        cmp rdi, rsi
        je zero
        jg more
        jl less

    zero:
        ret 0

    less:
        ret -1

    more:
        ret 1