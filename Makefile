NAME = libft.a
SRCDIR = srcs
OBJDIR = o_files
SRCS =		srcs/ft_isalpha.c \
			srcs/ft_toupper.c \
			srcs/ft_isdigit.c \
			srcs/ft_tolower.c \
			srcs/ft_isascii.c \
			srcs/ft_isalnum.c \
			srcs/ft_strchr.c \
			srcs/ft_isprint.c \
			srcs/ft_strrchr.c \
			srcs/ft_strlen.c \
			srcs/ft_strncmp.c \
			srcs/ft_memset.c \
			srcs/ft_memchr.c \
			srcs/ft_bzero.c \
			srcs/ft_memcpy.c \
			srcs/ft_memcmp.c \
			srcs/ft_memmove.c \
			srcs/ft_strnstr.c \
			srcs/ft_strlcpy.c \
			srcs/ft_strlcat.c \
			srcs/ft_atoi.c \
			srcs/ft_calloc.c \
			srcs/ft_strdup.c \
			srcs/ft_substr.c \
			srcs/ft_strjoin.c \
			srcs/ft_strtrim.c \
			srcs/ft_split.c \
			srcs/ft_itoa.c \
			srcs/ft_strmapi.c \
			srcs/ft_striteri.c \
			srcs/ft_putchar_fd.c \
			srcs/ft_putstr_fd.c \
			srcs/ft_putendl_fd.c \
			srcs/ft_putnbr_fd.c \
			srcs/ft_printf.c \
			srcs/ft_printer.c \
			srcs/get_next_line.c \
			srcs/ft_lstnew.c \
			srcs/ft_lstadd_front.c \
			srcs/ft_lstsize.c \
			srcs/ft_lstlast.c \
			srcs/ft_lstadd_back.c \
			srcs/ft_lstdelone.c \
			srcs/ft_lstclear.c \
			srcs/ft_lstiter.c \
			srcs/ft_lstmap.c \

OBJECTS := $(patsubst $(SRCDIR)%,$(OBJDIR)%,$(SRCS:.c=.o))

CC  = gcc
AR  = ar
HEADER  = libft.h
CFLAGS  = -Wall -Wextra -Werror
LFLAGS  = -rcs
GREEN = \x1b[32;01m
RED = \x1b[31;01m
BLUE = \x1b[34;01m
RESET = \x1b[0m
YELLOW = \x1b[33;01m
all: $(NAME)
$(NAME): $(OBJDIR) $(OBJECTS)
	@$(AR) $(LFLAGS) $(NAME) $(OBJECTS)
$(OBJDIR) :
	@mkdir $(OBJDIR)
$(OBJDIR)/%.o : $(SRCDIR)/%.c
	@$(CC) -Iheaders $(CFLAGS) -c $^ -o $@
	@printf "$(GREEN)Creating... $$(basename $@) $(RESET)\n"
	
clean:
	@-rm -rf $(OBJDIR)
	@printf "$(RED) deleting ...$(RESET)\n"
fclean: clean
	@-rm -f $(NAME)
re: fclean all
.PHONY:  all clean fclean re