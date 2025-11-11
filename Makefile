CC      = cc
NAME    = libft.a
SRC     = ft_isalpha.c \
          ft_isdigit.c \
          ft_isalnum.c \
          ft_isascii.c \
          ft_isprint.c \
          ft_strlen.c \
          ft_memset.c \
          ft_bzero.c \
          ft_memcpy.c \
          ft_memmove.c \
          ft_strlcpy.c \
          ft_strlcat.c \
          ft_toupper.c \
          ft_tolower.c \
          ft_strchr.c \
          ft_strrchr.c \
          ft_strncmp.c \
          ft_memchr.c \
          ft_memcmp.c \
          ft_strnstr.c \
		  ft_atoi.c \
		  ft_calloc.c \
		  ft_strdup.c \
		  ft_substr.c \
		  ft_strjoin.c \
		  ft_strtrim.c \
		  ft_split.c
OBJ     = ${SRC:.c=.o}
CFLAGS  = -Wall -Werror -Wextra
COMPILE = $(CC) $(CFLAGS) -c
LIB     = ar rc $(NAME)
RANLIB  = ranlib $(NAME)
REMOVE  = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	@$(LIB) $(OBJ)
	@$(RANLIB)

%.o: %.c
	@$(COMPILE) $< -o $@

clean:
	@$(REMOVE) $(OBJ)

fclean: clean
	@$(REMOVE) $(NAME)

re: fclean all

.PHONY: all clean fclean re

