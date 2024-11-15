#include "../../inc/cub3D.h"

void	printerror(char *error)
{
	write(2, "Error\n", 6);
	write(2, error, ft_strlen(error));
	write(2, "\n", 1);
	exit (1);
}
