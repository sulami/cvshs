#include <stdio.h>
#include <stdlib.h>

int
main()
{
	int *arr = malloc(sizeof(int) * 1000000);
	if (!arr)
		return 1;

	int i;
	unsigned long long s = 0;

	for (i = 0; i < 1000000; i++)
		arr[i] = i + 1;

	for (i = 0; i < 1000000; i++)
		arr[i] = arr[i] * 2;

	for (i = 0; i < 1000000; i++)
		s += arr[i];

	printf("%llu\n", s);

	return 0;
}

