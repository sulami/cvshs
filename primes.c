#include <stdio.h>

int
main()
{
	int i, j;

	for (i = 2; i <= 20000; i++) {
		int c = 0;

		for (j = 2; j <= i / 2; j++)
			if (i % j)
				c++;

		if (!c)
			printf("%d\n", i);
	}

	return 0;
}

