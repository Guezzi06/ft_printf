# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aguezzi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 12:14:01 by aguezzi           #+#    #+#              #
#    Updated: 2022/11/19 20:54:05 by aguezzi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a

SRCS	= ft_printf.c ft_strlen.c ft_putchar.c ft_putstr.c ft_printf_ptr.c ft_printf_hex_ptr.c ft_printf_nbr.c ft_printf_uns_int.c ft_printf_hex_min.c ft_printf_hex_maj.c ft_printf_perc.c

CC	= gcc

FLAGS	= -Wall -Wextra -Werror

OBJS	= ${SRCS:.c=.o}

RM	= rm -f

all:	${NAME}

.c.o:
		${CC} ${FLAGS} -I ft_printf.h -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		ar -rc ${NAME} ${OBJS}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:	fclean all

.PHONY:	all clean fclean re
