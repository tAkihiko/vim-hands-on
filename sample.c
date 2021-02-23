#include <stdio.h>
#include "sample.h"

int main(void)
{
	printf("hello, world!!\n");

	return 0;
}

int sample(void)
{
	int a = 0;

	if(a = 0){	// <-- !!
		for(int i = 0; i < 10; i++) {
			a += 1;
		}
	}

	return a;
}
