# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juandrie <juandrie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/19 14:03:23 by juandrie          #+#    #+#              #
#    Updated: 2023/05/23 12:26:24 by juandrie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =	ft_hexa.c\
		ft_printf.c\
		ft_printfoption.c\
		ft_printpercent.c\
		ft_printpointeur.c\
		ft_print_unsigned.c\
		ft_putchar.c\
		ft_putstr.c\
		
OBJS = ${SRCS:.c=.o}

LIBFT_DIR = Libft

HEADER = ft_printf.h

CC = cc

RM = rm -rfv

FLAGS = -Wall -Wextra -Werror

${NAME}: ${OBJS}
		$(MAKE) -C $(LIBFT_DIR)
		cp $(LIBFT_DIR)/libft.a .
		mv libft.a $(NAME)
		${CC} ${FLAGS} -c ${SRCS}
		ar cr ${NAME} ${OBJS}
	
all: ${NAME}

clean: 
		${RM} ${OBJS}
		$(MAKE) -C $(LIBFT_DIR) clean
		
fclean: clean
		${RM} ${NAME}
		$(MAKE) -C $(LIBFT_DIR) fclean

re: 
	$(MAKE) fclean
	$(MAKE) all
