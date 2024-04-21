NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

BUILD_DIR = build

# Memory handling functions

LIBMEM_SRCS =	ft_bzero.c		\
				ft_calloc.c		\
				ft_memchr.c		\
				ft_memcmp.c		\
				ft_memcpy.c		\
				ft_memset.c		\
				ft_memmove.c	\

LIBMEM_DIR = mem
LIBMEM_OBJ = $(addprefix $(LIBMEM_DIR)/$(BUILD_DIR)/, $(LIBMEM_SRCS:.c=.o))

# Singly Linked List functions

LIBSLL_SRCS =	ft_sll_get.c		\
				ft_sll_pop.c		\
				ft_sll_map.c		\
				ft_sll_push.c		\
				ft_sll_swap.c		\
				ft_sll_shift.c		\
				ft_sll_delete.c		\
				ft_sll_insert.c		\
				ft_sll_create.c		\
				ft_sll_destroy.c	\
				ft_sll_unshift.c	\

LIBSLL_DIR = sll
LIBSLL_OBJ = $(addprefix $(LIBSLL_DIR)/$(BUILD_DIR)/, $(LIBSLL_SRCS:.c=.o))

# Character handling functions

LIBCTYPE_SRCS =	ft_isalnum.c	\
				ft_isalpha.c	\
				ft_isascii.c	\
				ft_isdigit.c	\
				ft_islower.c	\
				ft_isprint.c	\
				ft_isspace.c	\
				ft_isupper.c	\
				ft_tolower.c	\
				ft_toupper.c	\

LIBCTYPE_DIR = ctype
LIBCTYPE_OBJ = $(addprefix $(LIBCTYPE_DIR)/$(BUILD_DIR)/, $(LIBCTYPE_SRCS:.c=.o))

# String handling functions

LIBSTRING_SRCS =	ft_split.c		\
					ft_strchr.c		\
					ft_strdup.c		\
					ft_substr.c		\
					ft_strlen.c		\
					ft_strupp.c		\
					ft_strmapi.c	\
					ft_strjoin.c	\
					ft_strlcpy.c	\
					ft_strlcat.c	\
					ft_strncmp.c	\
					ft_strnstr.c	\
					ft_strrchr.c	\
					ft_strtrim.c	\
					ft_striteri.c	\

LIBSTRING_DIR = string
LIBSTRING_OBJ = $(addprefix $(LIBSTRING_DIR)/$(BUILD_DIR)/, $(LIBSTRING_SRCS:.c=.o))

# Output functions

LIBPRINT_SRCS =	ft_putnbr_fd.c	\
				ft_putstr_fd.c	\
				ft_putchar_fd.c	\
				ft_putendl_fd.c	\

LIBPRINT_DIR = print
LIBPRINT_OBJ = $(addprefix $(LIBPRINT_DIR)/$(BUILD_DIR)/, $(LIBPRINT_SRCS:.c=.o))

# Queue functions

LIBQUEUE_SRCS =	ft_dequeue.c	\
				ft_enqueue.c	\
				ft_init_queue.c	\

LIBQUEUE_DIR = queue
LIBQUEUE_OBJ = $(addprefix $(LIBQUEUE_DIR)/$(BUILD_DIR)/, $(LIBQUEUE_SRCS:.c=.o))

# Conversion functions

LIBCONVERT_SRCS =	ft_atoi.c 	\
					ft_itoa.c	\
					ft_xtoa.c	\
					ft_ctob.c 	\
					ft_nbrlen.c \

LIBCONVERT_DIR = convert
LIBCONVERT_OBJ = $(addprefix $(LIBCONVERT_DIR)/$(BUILD_DIR)/, $(LIBCONVERT_SRCS:.c=.o))

all: $(NAME)

$(NAME): $(LIBCONVERT_OBJ) $(LIBQUEUE_OBJ) $(LIBPRINT_OBJ) $(LIBSTRING_OBJ) $(LIBCTYPE_OBJ) $(LIBSLL_OBJ) $(LIBMEM_OBJ)
	@ar rcs $@ $^
	@printf "✅ \033[0;32m$@ was created successfully!\033[0m\n"

$(LIBMEM_DIR)/$(BUILD_DIR)/%.o: $(LIBMEM_DIR)/%.c | $(LIBMEM_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBSLL_DIR)/$(BUILD_DIR)/%.o: $(LIBSLL_DIR)/%.c | $(LIBSLL_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBCTYPE_DIR)/$(BUILD_DIR)/%.o: $(LIBCTYPE_DIR)/%.c | $(LIBCTYPE_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBSTRING_DIR)/$(BUILD_DIR)/%.o: $(LIBSTRING_DIR)/%.c | $(LIBSTRING_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBPRINT_DIR)/$(BUILD_DIR)/%.o: $(LIBPRINT_DIR)/%.c | $(LIBPRINT_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBQUEUE_DIR)/$(BUILD_DIR)/%.o: $(LIBQUEUE_DIR)/%.c | $(LIBQUEUE_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBCONVERT_DIR)/$(BUILD_DIR)/%.o: $(LIBCONVERT_DIR)/%.c | $(LIBCONVERT_DIR)/$(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIBMEM_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBSLL_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBCTYPE_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBSTRING_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBPRINT_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBQUEUE_DIR)/$(BUILD_DIR):
	mkdir -p $@

$(LIBCONVERT_DIR)/$(BUILD_DIR):
	mkdir -p $@

clean:
	rm -rf $(LIBMEM_DIR)/$(BUILD_DIR)
	rm -rf $(LIBSLL_DIR)/$(BUILD_DIR)
	rm -rf $(LIBCTYPE_DIR)/$(BUILD_DIR)
	rm -rf $(LIBPRINT_DIR)/$(BUILD_DIR)
	rm -rf $(LIBQUEUE_DIR)/$(BUILD_DIR)
	rm -rf $(LIBSTRING_DIR)/$(BUILD_DIR)
	rm -rf $(LIBCONVERT_DIR)/$(BUILD_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re