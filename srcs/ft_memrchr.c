/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adomingu <adomingu@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/19 14:04:35 by adomingu          #+#    #+#             */
/*   Updated: 2015/01/19 14:20:05 by adomingu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memrchr(const void *s, int c, size_t n)
{
	size_t					i;
	const unsigned char		*src;
	unsigned char			ch;

	i = 0;
	ch = (unsigned char)c;
	src = (unsigned char *)s;
	i = ft_strlen((const char *)src);
	while (i && src[i] != ch)
		i--;
	return ((void *)s + i);
}
