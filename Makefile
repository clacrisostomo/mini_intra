# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nbarreir <nbarreir@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/07 18:43:52 by nbarreir          #+#    #+#              #
#    Updated: 2021/12/08 01:58:22 by nbarreir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell

CFLAGS = -Wall -Wextra -Werror
INCLUDES = ../includes/minishell.h libraries/libft/libft.h
LIBFT = libraries/libft
SRC_PATH = ./source/


SRC = $(SRC_PATH)main.c\
			$(SRC_PATH)variable_env_local/arraytable.c\
			$(SRC_PATH)variable_env_local/array_by_key.c\
			$(SRC_PATH)variable_env_local/array_to_str_arr.c\
			$(SRC_PATH)variable_env_local/variable.c\
			$(SRC_PATH)variable_env_local/free_table.c\
			$(SRC_PATH)builtins/changedir.c\
			$(SRC_PATH)builtins/changedir_control.c\
			$(SRC_PATH)builtins/echo_env_pwd.c\
			$(SRC_PATH)builtins/export.c\
			$(SRC_PATH)builtins/export_only.c\
			$(SRC_PATH)builtins/export_utils.c\
			$(SRC_PATH)builtins/unset.c\
			$(SRC_PATH)parser/split_command_0.c\
			$(SRC_PATH)parser/split_command_1.c\
			$(SRC_PATH)parser/split_command_2.c\
			$(SRC_PATH)parser/split_control_0.c\
			$(SRC_PATH)parser/split_control_1.c\
			$(SRC_PATH)parser/split_control_2.c\
			$(SRC_PATH)parser/set_space_for_redir.c\
			$(SRC_PATH)pipe_redirect/cmd_for_redirect.c\
			$(SRC_PATH)pipe_redirect/logic_fd.c\
			$(SRC_PATH)pipe_redirect/miss_pipe.c\
			$(SRC_PATH)pipe_redirect/mister_redirect.c\
			$(SRC_PATH)pipe_redirect/here_doc.c\
			$(SRC_PATH)execute/execute.c\
			$(SRC_PATH)execute/execve.c\
			$(SRC_PATH)is_path.c\
			$(SRC_PATH)signal.c\
			$(SRC_PATH)paths_n_prompt.c

all: $(NAME)

$(NAME): $(OBJ)
		make -C $(LIBFT)
		gcc $(CFLAGS) -g -o $(NAME) $(SRC) -L $(LIBFT) -lft -lreadline -I includes -fsanitize=address
	@echo "\033[32m   _____  __     __  _______  _        _  \033[0m"
	@sleep 1
	@echo "\033[32m  / ___| |  |   |  ||  _____\| |      | |  \033[0m"
	@sleep 1
	@echo "\033[32m | |     |  |   |  || |      | |      | |  \033[0m"
	@sleep 1
	@echo "\033[32m | |___  |  |___|  || |__    | |      | | \033[0m"
	@sleep 1
	@echo "\033[32m  \___  \|   ___   ||  __|   | |      | | \033[0m"
	@sleep 1
	@echo "\033[32m      | ||  |   |  || |      | |      | |\033[0m"
	@sleep 1
	@echo "\033[32m   ___| ||  |   |  || |______| |______| |______ \033[0m"
	@sleep 1
	@echo "\033[32m  |____/ |__|   |__||_______/|_______/|_______/    \033[0m"
	@sleep 1
	@echo "\033[35m  ==============================================\033[0m"
	@echo "  Welcome to our Hell.....................\033[32m[DONE]\033[0m\n"

%.o: %.c
		gcc -c $< -I includes

git:
	@git add .
	@git commit -m "$m"
	@git push
#make git m="blablabla"

clean:
	make clean -C $(LIBFT)
	rm -f $(OBJ)
	@echo "  Cleaning objects...............................\033[32m[DONE]\033[0m"

fclean: clean
	make fclean -C $(LIBFT)
	rm -f $(NAME) $(OBJ)
	@echo "  Deleting Application...........................\033[32m[DONE]\033[0m\n"

re: fclean all

pi:
	@echo "@%,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ".????.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ".???????S@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ":?????????#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "*?????????????*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@???????#?????###@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,*.??#"
	@echo "@?????,##,S???#####@@@@@@@@@@@@@@@@@@@@@@@@@@S##????????????"
	@echo "@?????*,,,,,,########@@@@@@@@@@@@@@@@@:###????????????????#@"
	@echo "@##????,,,,,,,,,#####@@@@@@@@@@@@@.######?????#?:#????????@@"
	@echo "@####?#,,,,,,,,,,,##@@@@@@@@@@@@@@#######*,,,,,*##+?????+@@@"
	@echo "@######,,,,,,,,,,,S@@@@@@@@@@@@@@#.,,,,,,,,,,,,,,:?####@@@@@"
	@echo "@######,,,,,,,,,,%@@,S.S.,@@@@@@@,,,,,,,,,,,,,,,######@@@@@@"
	@echo "@@#####,,,,,,,,.,,,,,,,,,,,,,,,*#,,,,,,,,,,,,,.#####:@@@@@@@"
	@echo "@@@@@@@@@@.#,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,######@@@@@@@@@"
	@echo "@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,+######@@@@@@@@@@"
	@echo "@@@@@@@@%,,,,,++:,,,,,,,,,,,,,,,,,,,,,@@:.######:@@@@@@@@@@@"
	@echo "@@@@@@@:,,,:##@@@#,,,,,,,,,,,,?@S#,,,,,,@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@?,,,#######,,,,,,,,,,,#.@:##,,,:?@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@.,,S,??%?*,,,,,,,,,,,,####?%+,::%@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@?..*+,,,,,,*,,,,,,,,,,,+#S,::::*@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@%..*,,,,,,,,,,,,,,,,,,,:.*...%@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@.**::*::::::,,:::::::+.....@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@.@@@@?:**:::*::::::::::*...@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@?,,,,,,,,,:,##S::::**:::S#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@.,,,,,,:S#?##?########:#****#,@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@,%:*%,??#,,,,:*S##**:..****:,.*@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@+,,,,,,,,,,,,,,,,,,*...*:,.,@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@+,,,,,,,,,,,,,,,,,,?@@@@@*#?@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@*,,,,,,,,,,,,,,,,,,.@#########?@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@.*:,,,,,,,,,,,,,,:.##%,?#####????:@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@?.....*******....S@@@@@@:##?????@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@S.+..********...#%@@@@@@@@@##,@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@#*,,,,*.#@@@@@@@..*:,,*S@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@+@,%,,,#@@@@@@@@@@,S,,,%,,:@@@@@@@@@@@@@@@@@@@@@@@"

chu:
	@echo "@@@@@@@@@@@@@.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@,??@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@.###@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@,##:,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*?@@"
	@echo "@@@@@@@@@#::::@@@@@@@@@@@@@@@@@@@@@@@@@,*.???%@@@@@@@@*,,,@@"
	@echo "@@@@@@@@::,,::@@@@@@@@@@@@@@@@@@%:,,:#####??,@@@@@@*,,,,,,:@"
	@echo "@@@@@@@@%:,,:.@@@@@@@@@@@@@@.:::::::.#####@@@@@@@.::,,,,,::@"
	@echo "@@@@@@@@%::::.,,,,:,:%@@:,:::::::::S###@@@@@@@@%,:::::,::,:%"
	@echo "@@@@@@@@.S,,,,,,,,::::::::::::::::?@@@@@@@@@@?::::::::::::::"
	@echo "@@@@@@@:,,,,,,,:,#.#?::::::+.,@@@@@@@@@@@@@.::::::::::::::::"
	@echo "@@@@@,#:S,,:,::::*#.,:::::::*@@@@@@@@@@@@,::::::::::::::::+@"
	@echo "@@@@@:%S::::::*,,:::...+.::::S@@@@@@@@@@:::::::::::::::%@@@@"
	@echo "@@@@*.::::,SSSS%::::+++++:::::%@@@@@@@@:::::::::::::%@@@@@@@"
	@echo "@@@@@.+:,,::S%+S::::.+++:::::::,@@@@@@@@@:::*::::S@@@@@@@@@@"
	@echo "@@@@@@.S:::::.*.::::::::::::::::@@@@@@@@@,****%@@@@@@@@@@@@@"
	@echo "@@@@@@@@.:::::::::::::::*:,**::::,@@@@@@@@,***@@@@@@@@@@@@@@"
	@echo "@@@@,%,::::::::::::::::*.****::,:S%@@@@@@......@@@@@@@@@@@@@"
	@echo ",**::::,,,,,,:::::::::::+:**:::::,::@@?.....S@@@@@@@@@@@@@@@"
	@echo "%:*:,:::,,,,,,,,,,,::::::%::::::,,,::,@S..+@@@@@@@@@@@@@@@@@"
	@echo "@@@@@,S%+::*,:,,::,:,,,,::::::::::::::?@@%SS?@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@.:,,,,:,,,,,,,:::::::::::::+SSSSS.@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@:,,,:::::,::::,:::::::::::*?.@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@+,:,:,::::::::::,,::,::::**.SS@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@S,,:,,,,::::::::::::::::****@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@:::::::::****::::::*******S@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@@**********.%..***********@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@@@@,?+S%@@@@@@@@@@@@......@@@@@@@@@@@@@@@@@@@@"
	@echo "@@@@@@@@@@@@@@@@@@@+..*@@@@@@@@@@@@@:+**@@@@@@@@@@@@@@@@@@@@"