NAME_CLIENT	=	client
NAME_SERVER	=	server

CC = cc
CFLAGS = -Wall -Wextra -Werror

all:			$(NAME_CLIENT) $(NAME_SERVER)
				@clear
				@echo "███╗   ███╗██╗███╗   ██╗██╗████████╗ █████╗ ██╗     ██╗  ██╗";
				@echo "████╗ ████║██║████╗  ██║██║╚══██╔══╝██╔══██╗██║     ██║ ██╔╝";
				@echo "██╔████╔██║██║██╔██╗ ██║██║   ██║   ███████║██║     █████╔╝ ";
				@echo "██║╚██╔╝██║██║██║╚██╗██║██║   ██║   ██╔══██║██║     ██╔═██╗ ";
				@echo "██║ ╚═╝ ██║██║██║ ╚████║██║   ██║   ██║  ██║███████╗██║  ██╗";
				@echo "╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝";
				@echo "                                                            ";

$(NAME_CLIENT):
				make -C libft/ && mv libft/libft.a .
				$(CC) -o $(NAME_CLIENT) client.c libft.a

$(NAME_SERVER):
				$(CC) -o $(NAME_SERVER) server.c libft.a

clean:
				make clean -C libft/
				@clear
				@echo "(っ◔◡◔)っ clean";

fclean: 		clean
				rm -rf $(NAME_CLIENT) $(NAME_SERVER) libft.a
				@clear
				@echo "(づ｡◕‿‿◕｡)づ fclean";

re:				fclean all

.PHONY:			all clean fclean re
