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

#endif