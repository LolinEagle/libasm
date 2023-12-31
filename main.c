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
	printf("%s=%s\n", ft_buf, buf);
	bzero(ft_buf, 8);
	bzero(buf, 8);
	fd = open("libasm.h", O_RDONLY);
	ft_read(fd, ft_buf, 7);
	close(fd);
	fd = open("libasm.h", O_RDONLY);
	read(fd, buf, 7);
	close(fd);
	printf("%s=%s\n", ft_buf, buf);
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
	char	*src1;
	char	*src2;
	char	dest[8];

	printf("--------------------------- strcpy ---------------------------\n");
	src1 = "Bonjour";
	src2 = "Bonsoir";
	bzero(dest, 8);
	printf("dest=%s\n", ft_strcpy(dest, src1));
	bzero(dest, 8);
	printf("dest=%s\n", strcpy(dest, src2));
	src1 = "";
	src2 = "";
	bzero(dest, 8);
	printf("dest=%s\n", ft_strcpy(dest, src1));
	bzero(dest, 8);
	printf("dest=%s\n", strcpy(dest, src2));
}

void	test_strdup(void)
{
	char	*dup;

	printf("--------------------------- strdup ---------------------------\n");
	dup = ft_strdup("Bonjour");
	printf("dup=%s\n", dup);
	free(dup);
	dup = strdup("Bonjour");
	printf("dup=%s\n", dup);
	free(dup);
	dup = ft_strdup("");
	printf("dup=%s\n", dup);
	free(dup);
	dup = strdup("");
	printf("dup=%s\n", dup);
	free(dup);
	dup = ft_strdup("12345678901234567890123456789012345678901234567890123456");
	printf("dup=%s\n", dup);
	free(dup);
	dup = strdup("12345678901234567890123456789012345678901234567890123456");
	printf("dup=%s\n", dup);
	free(dup);
}

int	main(void)
{
	printf("--------------------------- strlen ---------------------------\n");
	printf("%zu=%zu\n", ft_strlen("12345678901234"), strlen("12345678901234"));
	printf("%zu=%zu\n", ft_strlen("1"), strlen("1"));
	printf("%zu=%zu\n", ft_strlen(""), strlen(""));
	test_read_and_ft_write();
	test_strcmp();
	test_strcpy();
	test_strdup();
	return (0);
}
