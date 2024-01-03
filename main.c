#include "inc/libasm.h"

int main(void)
{
    printf("\033[0;33mTRUE\n");
    printf("\033[0;32mMINE\n");

    printf("----------------------STRLEN-----------------------\n");
    printf("\033[0;33m\"test\"\t= %ld\n", strlen("test"));
    printf("\033[0;32m\"test\"\t= %ld\n", ft_strlen("test"));

    printf("----------------------STRCPY-----------------------\n");
    char dest1[] = "test : ";
    char dest2[] = "test : ";
    char src[] = "truc";
    printf("\033[0;33m\"test\"\t= %s\n", strcpy(dest1, src));
    printf("\033[0;32m\"test\"\t= %s\n", ft_strcpy(dest2, src));
    printf("\033[0m---------------------------------------------------\n");
    return (0);
}