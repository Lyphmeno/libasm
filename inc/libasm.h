#ifndef LIBASM_H
#define LIBASM_H

#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>

ssize_t		ft_strlen(const char* s);
char		*ft_strcpy(char *dest, const char *src);
int			ft_strcmp(const char* str1, const char* str2);
ssize_t		ft_write(int fd, const void *buf, size_t count);
ssize_t		ft_read(int fd, void *buf, size_t count);
char		*ft_strdup(const char *str1);

#endif