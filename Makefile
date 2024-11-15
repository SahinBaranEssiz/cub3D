
SRCS =	./inc/get_next_line/get_next_line_utils.c ./inc/get_next_line/get_next_line.c \
		./src/main.c ./src/utils/utils.c ./src/utils/error_utils.c ./src/utils/utils2.c \
		./src/file_check/check_file.c ./src/file_check/check_file_path.c ./src/file_check/check_textures.c \
		./src/file_check/check_map.c ./src/file_check/check_map_utils.c  ./src/file_check/check_map_is_valid_utils.c\
		./src/game/game.c ./src/game/draw_textures.c ./src/game/draw_calculations.c ./src/game/movements.c ./src/game/key_inputs.c\
		./src/game/cam.c

MLX = ./mlx/libmlx.a

OBJS = $(SRCS:.c=.o)

NAME = cub3D

CC = @gcc

CFLAGS = -Wall -Werror -Wextra -g -fsanitize=address
MFLAGS = -Lmlx -lmlx -framework OpenGL -framework AppKit


all:$(NAME)

$(MLX):
	make -C ./mlx

$(NAME): $(MLX) $(OBJS)
	$(CC) $(CFLAGS) $(MFLAGS) $(SRCS) $(MLX) -o $(NAME)

clean:
	@make clean -C ./mlx
	@rm -rf $(OBJS)


fclean: clean
	@make -C fclean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re