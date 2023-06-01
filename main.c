/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: juandrie <juandrie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/22 12:22:01 by juandrie          #+#    #+#             */
/*   Updated: 2023/05/23 17:59:37 by juandrie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	main(void)
{
	char	*str;

	str = NULL;
	printf("Fausse ; %d\n : Vraie ; %d\n", ft_printf(str), printf(str));
	return (0);
}
