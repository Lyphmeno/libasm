Libasm Project :
================

Welcome to the libasm project !  
This project aims to provide an introduction to [Assembly language](https://fr.wikipedia.org/wiki/Assembly_language) and a deeper understanding of [Processor register](https://en.wikipedia.org/wiki/Processor_register).

Project Description
-------------------

The focus of this project will be to rewrite basic libc functions in assembly

### Mandatory Part:

* ft_strlen
* ft_strlcpy
* ft_strcmp
* ft_write
* ft_read
* ft_strdup

### Bonus Part:

* ft\_atoi\_base
* ft\_list\_push_front
* ft\_list\_size
* ft\_list\_sort
* ft\_list\_remove_if
```C
typedef struct  s_list
{
  void           *data;
  struct t_list  next;
}               t_list;
```

Project Requirements
--------------------

* Must write 64 bits ASM. Beware of the [calling convention](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-170).
* Can’t do inline ASM, you must do ’.s’ files
* Must compile your assembly code with [nasm](https://fr.wikipedia.org/wiki/Netwide_Assembler).
* You must use the [Intel syntax](https://imada.sdu.dk/u/kslarsen/dm546/Material/IntelnATT.htm), not the AT&T

Resources
---------

* [Assembler's Documentation](https://www.ibm.com/docs/en/aix/7.2?topic=aix-assembler-language-reference)
* [Learn NASM programming](https://www.tutorialspoint.com/assembly_programming/)
* [Learning x86 with NASM playlist](https://www.youtube.com/playlist?list=PL2EF13wm-hWCoj6tUBGUmrkJmH1972dBB)
* [Linux System Call Table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
* [Cheat Sheet](https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html)
