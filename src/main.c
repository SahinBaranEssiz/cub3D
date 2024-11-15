#include "../inc/cub3D.h"

static void	init_data(t_data *data)
{
	data->textures = malloc(sizeof(t_texture));
	data->view = malloc(sizeof(t_view));
	data->ray = malloc(sizeof(t_ray));
	data->keys = malloc(sizeof(t_keys));
	data->player = malloc(sizeof(t_player));
	data->game = malloc(sizeof(t_game));
	if (!data->textures || !data->view || !data->ray || !data->keys
		|| !data->player || !data->game)
		printerror("Allocation error!");
}

int	main(int ac, char **av)
{
	t_data	data;

	if (ac != 2)
		printerror("Argument error!");
	init_data(&data);
	check_file(av[1], &data);
	game(&data);
	return (0);
}
