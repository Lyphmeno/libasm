NAME		:= a.out
LIBNAME		:= libasm.a
LIBNAMEB	:= libasm_bonus.a

AS			:= nasm
ASFLAGS		:= -f elf64

CC			:= gcc
CFLAGS  	:= -Wall -Wextra -Werror -static

AR			:= ar
ARFLAGS	 	:= rcs

SRCDIR		:= srcs
SRCEXT		:= s
SRC			:= \
				$(SRCDIR)/ft_strlen.s\
				$(SRCDIR)/ft_strcpy.s\
				$(SRCDIR)/ft_strcmp.s\
				$(SRCDIR)/ft_write.s\
				$(SRCDIR)/ft_read.s\
				$(SRCDIR)/ft_strdup.s\

SRCDIRB		:= srcs_bonus
SRCB		:= \
				$(SRCDIRB)/ft_atoi_base.s\

INCDIR		:=	inc
INCEXT		:=	h
HEADERS		:=	\
				$(INCDIR)/libasm.h
HEADERSB	:=	\
				$(INCDIR)/libasm_bonus.h

MAINDIR		:= mains
OBJDIR		:= objs
OBJEXT		:= o
OBJS		:= $(patsubst $(SRCDIR)/%.$(SRCEXT),$(OBJDIR)/%.$(OBJEXT),$(SRC))
OBJSB		:= $(patsubst $(SRCDIRB)/%.$(SRCEXT),$(OBJDIR)/%.$(OBJEXT),$(SRCB))

$(OBJDIR):
		@mkdir -p $(OBJDIR)

.PHONY:	all
all: $(NAME) 

$(NAME): $(LIBNAME) $(OBJDIR)/$(MAINDIR)/main.o
		@$(CC) $(CFLAGS) -o $(NAME) $(OBJDIR)/main.o -L. $(LIBNAME)

$(LIBNAME): $(OBJDIR) $(OBJS)
		@$(AR) $(ARFLAGS) $(LIBNAME) $(OBJS)

$(OBJDIR)/%.$(OBJEXT) : $(SRCDIR)/%.$(SRCEXT)
		@$(AS) $(ASFLAGS) $< -o $@

$(OBJDIR)/$(MAINDIR)/main.o: $(MAINDIR)/main.c
		@$(CC) $(CFLAGS) -c $(MAINDIR)/main.c -o $(OBJDIR)/main.o -I $(INCDIR)

.PHONY:	bonus
bonus:	$(LIBNAME) $(LIBNAMEB) $(OBJDIR)/$(MAINDIR)/main_bonus.o
		@$(CC) $(CFLAGS) -o $(NAME) $(OBJDIR)/main_bonus.o -L. $(LIBNAMEB)

$(LIBNAMEB): $(OBJDIR) $(OBJS) $(OBJSB)
		@$(AR) $(ARFLAGS) $(LIBNAMEB) $(OBJS) $(OBJSB)

$(OBJDIR)/%.$(OBJEXT) : $(SRCDIRB)/%.$(SRCEXT)
		@$(AS) $(ASFLAGS) $< -o $@

$(OBJDIR)/$(MAINDIR)/main_bonus.o: $(MAINDIR)/main_bonus.c
		@$(CC) $(CFLAGS) -c $(MAINDIR)/main_bonus.c -o $(OBJDIR)/main_bonus.o -I $(INCDIR)

.PHONY:	clean
clean:
		@rm -rf $(OBJDIR)

.PHONY:	fclean
fclean:	clean
		@rm -rf $(NAME) $(LIBNAME) $(LIBNAMEB)

.PHONY: re
re: fclean all

.PHONY: re_bonus
re_bonus: fclean bonus