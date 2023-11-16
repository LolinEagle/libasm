/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frrusso <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 17:11:29 by frrusso           #+#    #+#             */
/*   Updated: 2023/11/13 17:11:31 by frrusso          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void	test_read_and_ft_write(void)
{
	int		fd;
	char	ft_buf[8];
	char	buf[8];

	printf("------------------------ read & write ------------------------\n");
	bzero(ft_buf, 8);
	bzero(buf, 8);
	fd = open("ft_read.s", O_RDONLY);
	ft_read(fd, ft_buf, 7);
	close(fd);
	fd = open("ft_read.s", O_RDONLY);
	read(fd, buf, 7);
	close(fd);
	printf("[%s]=[%s]\n", ft_buf, buf);
	ft_write(1, "Bonjour\n", 8);
	write(1, "Bonjour\n", 8);
}

void	test_strcmp(void)
{
	printf("--------------------------- strcmp ---------------------------\n");
	printf("%i=%i\n", ft_strcmp("", ""), strcmp("", ""));
	printf("%i=%i\n", ft_strcmp("12345678901", ""), strcmp("12345678901", ""));
	printf("%i=%i\n", ft_strcmp("", "12345678901"), strcmp("", "12345678901"));
	printf("%i=%i\n", ft_strcmp("12345678", "123"), strcmp("12345678", "123"));
	printf("%i=%i\n", ft_strcmp("123", "12345678"), strcmp("123", "12345678"));
}

void	test_strcpy(void)
{
	char	src1[] = "Bonjour";
	char	src2[] = "Bonsoir";
	char	dest[8];

	printf("--------------------------- strcpy ---------------------------\n");
	bzero(dest, 8);
	ft_strcpy(dest, src1);
	printf("%s\n", dest);
	bzero(dest, 8);
	strcpy(dest, src2);
	printf("%s\n", dest);
}

void	test_strdup(void)
{
	printf("--------------------------- strdup ---------------------------\n");
}

int	main(void)
{
	printf("--------------------------- strlen ---------------------------\n");
	printf("%zu=%zu\n", ft_strlen(""), strlen(""));
	printf("%zu=%zu\n", ft_strlen("12345678901234"), strlen("12345678901234"));
	test_read_and_ft_write();
	test_strcmp();
	test_strcpy();
	test_strdup();
	return (0);
}
