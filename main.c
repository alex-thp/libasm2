#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

size_t		ft_strlen(char *str);
char		*ft_strcpy(char *dest, char *src);
int			ft_strcmp(char *s1, char *s2);
ssize_t		ft_write(int fd, const void *buf, size_t count);
ssize_t		ft_read(int fd, void *buff, size_t count);
char		*ft_strdup(const char *s);

int main(void)
{
	ssize_t		i;
	char		*dest;
	char		*src;
	int			j;
	int			fd;
	char		*dup;

	fd = open("test", O_RDONLY);
	errno = 0;
	dest = malloc(30);
	src = "Salut\0";
	i = ft_strlen(src);
	printf("retour ft_strlen : %zu\n", i);
	ft_strcpy(dest, src);
	printf("retour ft_strcpy = %s\n\n", dest);
	j = ft_strcmp("Salus", src);
	printf("cmp = %d\n\n", j);
	i = ft_write(1, dest, ft_strlen(dest));
	printf("\nretour ft_write : %ld\n", i);
	printf("errno : %d\n\n", errno);
	i = write(1, dest, ft_strlen(dest));
	printf("\nretour write : %ld\n", i);
	printf("errno : %d\n\n", errno);
	i = ft_read(fd, dest, 15);
	printf("ft_read : %s\n", dest);
	printf("retour ft_read : %zd\n", i);
	printf("errno : %d\n\n", errno);
	close(fd);
	errno = 0;
	fd = open("test", O_RDONLY);
	i = read(fd, dest, 15);
	printf("read : %s\n", dest);
	printf("retour read : %zd\n", i);
	printf("errno : %d\n\n", errno);
	dup = strdup(dest);
	printf("strdup : %s\n", dup);
	dup = ft_strdup(dest);
	printf("ft_strdup : %s\n", dup);
	return(0);
}