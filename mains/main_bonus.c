#include "../inc/libasm_bonus.h"

int print_list(t_list *list)
{
	int i;
	t_list *tmp;

	if (!list)
		return printf("\033[0;33mEmpty list\n");
	tmp = list;
	i = ft_list_size(tmp) - 1;
	printf("\033[32m----BACK-----\n");
	while (tmp)
	{
		printf("\033[0;32mlist[%d] -> %s\n", i, (char *)tmp->data);
		tmp = tmp->next;
		i--;
	}
	printf("\033[32m----FRONT----\n");
	return 0;
}

int main(void)
{
	printf("\033[0m----------------------BONUS----------------------\n");
	printf("\033[0;33mERROR\n");
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
	printf("\033[0m----------------FT_LIST_PUSH_FRONT---------------\n");
	t_list *lst = NULL;
	print_list(lst);
	ft_list_push_front(&lst, "d");
	ft_list_push_front(&lst, "c");
	ft_list_push_front(&lst, "b");
	ft_list_push_front(&lst, "a");
	print_list(lst);
	printf("\033[0m-------------------FT_LIST_SIZE------------------\n");
	t_list *lstEmpty = NULL;
	printf("\033[0;33msize of lstEmpty\t= %d\n", ft_list_size(lstEmpty));
	printf("\033[0;32msize of lst\t\t= %d\n", ft_list_size(lst));
	printf("\033[0m-------------------------------------------------\n");
	return (0);
}