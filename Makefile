NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

BUILD_DIR = build

MISC_SRCS =	ft_isspecifier.c	\
			ft_strcat_safe.c	\
			ft_format_substr.c	\
			ft_get_specifier.c	\

MISC_DIR = misc
MISC_OBJS = $(addprefix $(BUILD_DIR)/, $(MISC_SRCS:.c=.o))

FLAGS_SRCS =	ft_isflag.c		\
				ft_flag_size.c	\
				ft_init_flags.c	\

FLAGS_DIR = flags
FLAGS_OBJS = $(addprefix $(BUILD_DIR)/, $(FLAGS_SRCS:.c=.o))

PRINT_SRCS =	ft_print_hex.c		\
				ft_print_str.c		\
				ft_print_ptr.c		\
				ft_print_nbr.c		\
				ft_print_null.c		\
				ft_print_char.c		\
				ft_print_uphex.c	\
				ft_print_padding.c	\
				ft_print_prefix_i.c	\
				ft_print_prefix_x.c	\

PRINT_DIR = print
PRINT_OBJS = $(addprefix $(BUILD_DIR)/, $(PRINT_SRCS:.c=.o))

PARSE_SRCS =	ft_parse_i.c			\
				ft_parse_s.c			\
				ft_parse_c.c			\
				ft_parse_x.c			\
				ft_parse_null.c			\
				ft_parse_flags.c		\
				ft_parse_format.c		\
				ft_parse_substr.c		\
				ft_parse_field_i.c		\
				ft_parse_field_x.c		\
				ft_parse_field_s.c		\
				ft_parse_field_c.c		\
				ft_parse_prefix_i.c		\
				ft_parse_prefix_x.c		\
				ft_parse_field_null.c	\
				ft_parse_precision_i.c	\
				ft_parse_precision_x.c	\

PARSE_DIR = parse
PARSE_OBJS = $(addprefix $(BUILD_DIR)/, $(PARSE_SRCS:.c=.o))

LIBFT = libft.a
LIBFT_DIR = libft

all: $(NAME)

$(NAME): $(PARSE_OBJS) $(PRINT_OBJS) $(FLAGS_OBJS) $(MISC_OBJS) $(BUILD_DIR)/ft_printf.o | $(LIBFT_DIR)/$(LIBFT)
	@cp $(LIBFT_DIR)/$(LIBFT) $@
	@ar rcs $@ $^
	@printf "✅ \033[0;32m$@ was created successfully!\033[0m\n"

$(BUILD_DIR)/%.o: $(MISC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: $(FLAGS_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: $(PARSE_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: $(PRINT_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBFT_DIR)/$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	$(MAKE) $@ -C $(LIBFT_DIR) 
	rm -rf $(BUILD_DIR)

fclean: clean
	$(MAKE) $@ -C $(LIBFT_DIR)
	rm -f $(NAME)

re: fclean all

bonus: all

.PHONY: all clean fclean re
