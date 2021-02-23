#include <stdio.h>
#include "sample.h"

static int inner_func();
static int static_var = 0;
int global_var = 0;

int main(void)
{
	printf("hello, world!!\n");

	return 0;
}

int sample(void)
{
	int a = 0;
	int ret = 0;

	if(a = 0){	// <-- !!
		for(int i = 0; i < 10; i++) {
			a += 1;
		}
	}

	ret = inner_func();

	return a;
}

static int inner_func()
{
	return 0;
}
