#ifndef LIBASM_BONUS_H
#define LIBASM_BONUS_H

#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include "libasm.h"

typedef struct	s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

int		ft_atoi_base(char* str, char* base);
void	ft_list_push_front(t_list** begin_list, void* data);
int		ft_list_size(t_list *begin_list);
void	ft_list_sort(t_list **begin_list, int (*cmp)());
void	ft_list_remove_if(t_list** begin_list, void* data_ref, int (*cmp)(), void (*free_fct)(void *));

#endif