all :
	nasm -f macho64 -o ft_strlen.o ft_strlen.s
	nasm -f macho64 -o ft_strcpy.o ft_strcpy.s
	nasm -f macho64 -o ft_strcmp.o ft_strcmp.s
	nasm -f macho64 -o ft_write.o ft_write.s
	nasm -f macho64 -o ft_read.o ft_read.s
	nasm -f macho64 -o ft_strdup.o ft_strdup.s
	ar rc libasm.a ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o
	gcc -Wall -Werror -Wextra main.c libasm.a -o exe

clean :
	rm -f ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o

fclean : clean
	rm -f libasm.a
	rm -f exe

re : fclean all
	