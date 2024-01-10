#include "../inc/libasm_bonus.h"

int main(void)
{
    printf("\033[0m----------------------BONUS----------------------\n");
    printf("\033[0;33mTRUE\n");
    printf("\033[0;32mMINE\n");
    printf("\033[0m--------------------ATOI_BASE--------------------\n");
	char	bin[] = "101";
	char	hex[] = "af";
	char	hexa[] = "AF";
	char	num[] = "-2147483647";
    printf("\033[0;32mBinary(%s)\t\t= %d\n", bin, ft_atoi_base(bin, "01"));
    printf("\033[0;32mhexa(%s)\t\t= %d\n", hex, ft_atoi_base(hex, "0123456789abcdef"));
    printf("\033[0;32mHEXA(%s)\t\t= %d\n", hexa, ft_atoi_base(hexa, "0123456789ABCDEF"));
    printf("\033[0;32mInteger(%s)\t= %d\n", num, ft_atoi_base(num, "0123456789"));
    printf("\033[0m-------------------------------------------------\n");
    return (0);
}