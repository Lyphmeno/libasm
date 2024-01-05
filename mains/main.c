#include "../inc/libasm.h"

int main(void)
{
    printf("\033[0m-------------------MANDATORY-------------------\n");
    printf("\033[0;33mTRUE\n");
    printf("\033[0;32mMINE\n");

    printf("\033[0m--------------------STRLEN---------------------\n");
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

    printf("\033[0m--------------------WRITE----------------------\n");
	int res = 0;
	int fd = -1;
    res = write(1, "truc", 5);
    printf(" -> %d\n", res);
    res = ft_write(1, "truc", 5);
    printf(" -> %d\n", res);
    res = write(fd, &"c", 1);
    printf("\033[0;33m%d - %d\n", res, errno);
    res = ft_write(fd, &"c", 1);
    printf("\033[0;32m%d - %d\n", res, errno);

    printf("\033[0m--------------------READ-----------------------\n");
    char buff[10];
    buff[9] = '\0';
    fd = open("Makefile", O_RDONLY);
    printf("\033[0;33m%zd -> %s\n", ft_read(fd, buff, 9), buff);
    close(fd);
    fd = open("Makefile", O_RDONLY);
    printf("\033[0;32m%zd -> %s\n", read(fd, buff, 9), buff);
    close(fd);
    fd = -1;
    printf("\033[0;33m%zd", ft_read(fd, buff, 9));
    printf(" - %d\n", errno);
    printf("\033[0;32m%zd", read(fd, buff, 9));
    printf(" - %d\n", errno);

    printf("\033[0m--------------------STRDUP---------------------\n");
	char test[] = "Ceci est un test";
    char *dup = strdup(test);
    char *dup1 = ft_strdup(test);
    printf("\033[0;33m%s\n", dup);
    printf("\033[0;32m%s\n", dup1);
	free(dup);
	free(dup1);

    printf("\033[0m-----------------------------------------------\n");
    return (0);
}