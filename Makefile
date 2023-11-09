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
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)

$(NAME):
	nasm -f elf ft_strlen.s
	ar -r $(NAME) ft_strlen.o

all:$(NAME)

clean:
	rm -f *.o

fclean:clean
	rm -f $(NAME)

re:fclean all

debug:
	nasm -f elf main.s
	ld -m elf_i386 main.o
