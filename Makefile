# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frrusso <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/06 14:52:38 by frrusso           #+#    #+#              #
#    Updated: 2023/11/06 14:52:40 by frrusso          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup

$(NAME):

all:$(NAME)

clean:
	rm -f *.o

fclean:clean
	rm -f $(NAME)

re:fclean all

debug:
	nasm -f elf main.s
	ld -m elf_i386 main.o
