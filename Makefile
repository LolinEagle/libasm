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
SRCS	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS	=	$(SRCS:.s=.o)
NASM	=	nasm
ASMFLAG	=	-f elf64
CC		=	cc
CFLAG	=	-Wall -Wextra -Werror

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

$(NAME):$(OBJ)
	ar rcs $(NAME) $(OBJ)

all:$(NAME)
	$(CC) $(CFLAGS) main.c -L. -llibasm
	./a.out

clean:
	rm -f *.o

fclean:clean
	rm -f $(NAME) ./a.out

re:fclean all
