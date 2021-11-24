#include <stdio.h>

int main(int argc, char *argv[])
{
	if (argc==2)
	{
		printf("Buenos Dias, %s! Let's get to work.\n\n\n", argv[1]);
	}
	else
	{
		fprintf(stderr, "Usage: %s <name>\n", argv[0]);
		return 1;
	}
	return 0;
}
