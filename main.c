#include "inc/libasm.h"

int main(void)
{
    printf("\033[0m---------------------------------------------------\n");
    printf("\033[0;33mTRUE\n");
    printf("\033[0;32mMINE\n");

    printf("\033[0m----------------------STRLEN---------------------\n");
    printf("\033[0;33m\"test\"\t= %ld\n", strlen("test"));
    printf("\033[0;32m\"test\"\t= %ld\n", ft_strlen("test"));
    printf("\033[0;33m\"\"\t= %ld\n", strlen(""));
    printf("\033[0;32m\"\"\t= %ld\n", ft_strlen(""));

    printf("\033[0m--------------------STRCPY---------------------\n");
    char dest[] = "test : ";
    char dest0[] = "test : ";
    char src[] = "truc";
    printf("\033[0;33m-> |%s|\n", strcpy(dest, src));
    printf("\033[0;32m-> |%s|\n", ft_strcpy(dest0, src));
    printf("\033[0;33m-> |%s|\n", strcpy(dest, ""));
    printf("\033[0;32m-> |%s|\n", ft_strcpy(dest0, ""));

    printf("\033[0m--------------------STRCMP---------------------\n");
    char dest1[] = "123456";
    char dest2[] = "1234567";
    printf("\033[0;33mequal\t= %d\n", strcmp(dest1, dest1));
    printf("\033[0;32mequal\t= %d\n", ft_strcmp(dest1, dest1));
    printf("\033[0;33mless\t= %d\n", strcmp(dest1, dest2));
    printf("\033[0;32mless\t= %d\n", ft_strcmp(dest1, dest2));
    printf("\033[0;33mmore\t= %d\n", strcmp(dest2, dest1));
    printf("\033[0;32mmore\t= %d\n", ft_strcmp(dest2, dest1));

    printf("\033[0m---------------------WRITE---------------------\n");
    write(1, "truc\n", 5);
    ft_write(2, "truc\n", 5);
    
    printf("\033[0m---------------------READ---------------------\n");
    printf("\033[0;33m\n");
    printf("\033[0;32m\n");
    printf("\033[0m---------------------------------------------------\n");
    return (0);
}