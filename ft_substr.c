/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tiaubry <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/16 14:54:00 by tiaubry           #+#    #+#             */
/*   Updated: 2024/10/16 15:19:08 by tiaubry          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(const char *s, unsigned int start, size_t len)
{
	size_t	max_len;
	size_t	s_len;
	char	*substr;

	s_len = 0;
	max_len = (s_len - start < len);
	s_len = strlen(s);
	substr = ((char *)malloc(max_len + 1));
	if (!s)
		return (NULL);
	if (start >= s_len)
		return (ft_strdup(""));
	if (!substr)
		return (NULL);
	strncpy(substr, s + start, max_len);
	substr[max_len] = '\0';
	return (substr);
}
