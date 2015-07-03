#include <stdio.h>

int
main()
{
	int i;

	for (i = 0; i <= 1000000; i++) {
		if (!(i % 15))
			puts("FizzBuzz");
		else if (!(i % 5))
			puts("Buzz");
		else if (!(i % 3))
			puts("Fizz");
		else
			printf("%d\n", i);
	}

	return 0;
}

