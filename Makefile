NAME	= a.out
LIBNAME = libasm.a

AS		= nasm
ASFLAGS	= -f elf64

CC		= gcc
CFLAGS  = -Wall -Wextra -Werror

AR		= ar
ARFLAGS = rcs

SRCDIR  := ./srcs
SRCEXT  := s
SRC		:= \
			$(SRCDIR)/ft_strlen.s\
			$(SRCDIR)/ft_strcpy.s\
			$(SRCDIR)/ft_strcmp.s\
			$(SRCDIR)/ft_write.s\

INCDIR	:=	./inc
INCEXT	:=	h
HEADERS	:=	\
			$(INCDIR)/libasm.h

OBJDIR  := objs
OBJEXT  := o
OBJS	:= $(patsubst $(SRCDIR)/%.$(SRCEXT),$(OBJDIR)/%.$(OBJEXT),$(SRC))

.PHONY: all
all: $(NAME) 

$(NAME): $(LIBNAME) $(OBJDIR)/main.o
		@$(CC) $(CFLAGS) -o $(NAME) $(OBJDIR)/main.o -L. -lasm

$(LIBNAME): $(OBJDIR) $(OBJS)
		@$(AR) $(ARFLAGS) $(LIBNAME) $(OBJS)

$(OBJDIR)/%.$(OBJEXT) : $(SRCDIR)/%.$(SRCEXT)
		@$(AS) $(ASFLAGS) $< -o $@

$(OBJDIR)/main.o: main.c $(HEADERS)
		@$(CC) $(CFLAGS) -c main.c -o $@ -I $(INCDIR)

$(OBJDIR):
		@mkdir -p $(OBJDIR)

.PHONY: clean
clean:
		@rm -rf $(OBJDIR)

.PHONY: fclean
fclean: clean
		@rm -rf $(NAME) $(LIBNAME)

.PHONY: re
re: fclean all
