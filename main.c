#include "inc/libasm.h"

int main(void)
{
    printf("\033[0;33mTRUE\n");
    printf("\033[0;32mMINE\n");

    printf("----------------------STRLEN-----------------------\n");
    printf("\033[0;33m\"test\"\t= %ld\n", strlen("test"));
    printf("\033[0;32m\"test\"\t= %ld\n", ft_strlen("test"));

    printf("----------------------STRCPY-----------------------\n");
    char dest[] = "test : ";
    char dest0[] = "test : ";
    char src[] = "truc";
    printf("\033[0;33m%s\n", strcpy(dest, src));
    printf("\033[0;32m%s\n", ft_strcpy(dest0, src));

    printf("----------------------STRCMP-----------------------\n");
    char dest1[] = "123456";
    char dest2[] = "1234567";
    printf("\033[0;33m\"equal\"\t= %d\n", strcmp(dest1, dest1));
    printf("\033[0;32m\"equal\"\t= %d\n", ft_strcmp(dest1, dest1));
    printf("\033[0;33m\"less\"\t= %d\n", strcmp(dest1, dest2));
    printf("\033[0;32m\"less\"\t= %d\n", ft_strcmp(dest1, dest2));
    printf("\033[0;33m\"more\"\t= %d\n", strcmp(dest2, dest1));
    printf("\033[0;32m\"more\"\t= %d\n", ft_strcmp(dest2, dest1));
    printf("\033[0m---------------------------------------------------\n");
    return (0);
}