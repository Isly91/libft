NAME = libft.a
SRCS = ft_isalpha.c \
			ft_toupper.c \
			ft_isdigit.c \
			ft_tolower.c \
			ft_isascii.c \
			ft_isalnum.c \
			ft_strchr.c \
			ft_isprint.c \
			ft_strrchr.c \
			ft_strlen.c \
			ft_strncmp.c \
			ft_memset.c \
			ft_memchr.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memcmp.c \
			ft_memmove.c \
			ft_strnstr.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \

SRC_OBJS = $(SRCS:.c=.o)

BONUS_SRCS = ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c \

BONUS_OBJS = $(BONUS_SRCS:.c=.o)
CC  = gcc
AR  = ar
HEADER  = libft.h
CFLAGS  = -Wall -Wextra -Werror
LFLAGS  = -rcs
all: $(NAME)
$(NAME): $(SRC_OBJS)
	$(AR) $(LFLAGS) $(NAME) $(SRC_OBJS)
$(SRC_OBJS): $(SRCS) $(HEADER)
	$(CC) $(CFLAGS) -c $(SRCS)
clean:
	-rm -f $(SRC_OBJS)
	-rm -f $(BONUS_OBJS)
fclean: clean
	-rm -f $(NAME)
re: fclean all
bonus: $(BONUS_OBJS)
	$(AR) $(LFLAGS) $(NAME) $(BONUS_OBJS)
$(BONUS_OBJS): $(BONUS_SRCS) $(HEADER)
	$(CC) $(CFLAGS) -c $(BONUS_SRCS)
.PHONY:  all clean fclean re