/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tiaubry <tiaubry@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/15 15:28:53 by tiaubry           #+#    #+#             */
/*   Updated: 2024/10/16 13:50:23 by tiaubry          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	size_t	len;
	char	*dup;
	size_t	i;

	len = 0;
	dup = malloc(len + 1);
	len = strlen(s1);
	i = 0;
	if (!dup)
		return (NULL);
	while (i < len)
	{
		dup[i] = s1[i];
		i++;
	}
	dup[len] = '\0';
	return (dup);
}
