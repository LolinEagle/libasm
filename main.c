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
#include <stdio.h>

int	main(void)
{
	size_t	i;
	
	i = ft_strlen("123456789");
	printf("%zu\n", i);
	return (0);
}