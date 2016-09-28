#include "libft.h"

void	ft_free_array(char **s)
{
	int		i;

	i = 0;
	while (s && s[i])
	{
		free(s[i]);
		i++;
	}
	free(s);
}
