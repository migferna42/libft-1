# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Vesta_nna <Vesta_nna@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 13:08:16 by adomingu          #+#    #+#              #
#    Updated: 2016/03/21 19:26:23 by Vesta_nna        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra

SRCS = srcs/ft_atoi.c\
	srcs/ft_bzero.c\
	srcs/ft_isalnum.c\
	srcs/ft_isalpha.c\
	srcs/ft_isascii.c\
	srcs/ft_isdigit.c\
	srcs/ft_isprint.c\
	srcs/ft_memalloc.c\
	srcs/ft_memccpy.c\
	srcs/ft_memchr.c\
	srcs/ft_memcmp.c\
	srcs/ft_memcpy.c\
	srcs/ft_memdel.c\
	srcs/ft_memmove.c\
	srcs/ft_memset.c\
	srcs/ft_putchar.c\
	srcs/ft_putchar_fd.c\
	srcs/ft_putendl.c\
	srcs/ft_putendl_fd.c\
	srcs/ft_putnbr.c\
	srcs/ft_putnbr_fd.c\
	srcs/ft_putstr.c\
	srcs/ft_putstr_fd.c\
	srcs/ft_strcat.c\
	srcs/ft_strchr.c\
	srcs/ft_strclr.c\
	srcs/ft_strcmp.c\
	srcs/ft_strcpy.c\
	srcs/ft_strdel.c\
	srcs/ft_strdup.c\
	srcs/ft_strequ.c\
	srcs/ft_striter.c\
	srcs/ft_striteri.c\
	srcs/ft_strjoin.c\
	srcs/ft_strlcat.c\
	srcs/ft_strlen.c\
	srcs/ft_strmap.c\
	srcs/ft_strmapi.c\
	srcs/ft_strncat.c\
	srcs/ft_strncmp.c\
	srcs/ft_strncpy.c\
	srcs/ft_strnequ.c\
	srcs/ft_strnew.c\
	srcs/ft_strnstr.c\
	srcs/ft_strrchr.c\
	srcs/ft_strsplit.c\
	srcs/ft_strstr.c\
	srcs/ft_strsub.c\
	srcs/ft_strtrim.c\
	srcs/ft_tolower.c\
	srcs/ft_toupper.c\
	srcs/ft_itoa.c\
	srcs/ft_lstadd.c\
	srcs/ft_lstdel.c\
	srcs/ft_lstdelone.c\
	srcs/ft_lstiter.c\
	srcs/ft_lstnew.c\
	srcs/ft_lstmap.c\
	srcs/ft_lstaddlast.c\
	srcs/ft_lstadd_back.c\
	srcs/ft_realloc_join.c\
	srcs/ft_realloc_join_src.c\
	srcs/ft_strchri.c\
	srcs/ft_strnchri.c\
	srcs/get_next_line.c\
	srcs/ft_clear_str.c\
	srcs/ft_double_tablen.c\
	srcs/ft_double_tabputendl.c\
	srcs/ft_double_tabcpy.c\
	srcs/ft_replace.c\
	srcs/ft_array_putnbr.c

CC = gcc
LIB = ar rc
OBJS= $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@echo "CREATING LIBRARY LIBFT.A"
	@$(LIB) $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "LIBFT.A CREATED"

%.o: %.c
	@$(CC) $(CFLAGS) -Iincludes/ -o $@ -c $<

clean:
	@echo "SUPRESSING LIBFT'S OBJECTS"
	@rm -f $(OBJS)
	@echo "LIBFT'S OBJECTS SUPRESSED"

fclean: clean
	@echo "SUPRESSING LIBRARY LIBFT.A"
	@rm -f $(NAME)
	@echo "LIBFT.A SUPRESSED"

re: fclean all

.PHONY: clean fclean all re
