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

NAME	=	libasm.a
EXEC	=	main.out
SRCS	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS	=	$(SRCS:.s=.o)
NASM	=	nasm -f elf64
CC		=	cc -Wall -Wextra -Werror

%.o : %.s
	$(NASM) $< -o $@

$(NAME):$(OBJS)
	ar rcs $(NAME) $(OBJS)

all:$(NAME)

clean:
	rm -f $(OBJS)

fclean:clean
	rm -f $(NAME) $(EXEC)

re:fclean all

main:$(NAME)
	$(CC) -o $(EXEC) main.c -L. -lasm
	./$(EXEC)
