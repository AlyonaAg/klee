#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "klee/klee.h"

union str_n2
{
	int32_t uiRet;
	int32_t uiFaultId;
};

int compare(int * n1, int * n2)
{
	*n1 = 15;
	if (*n1 == *n2)
	{
		printf("aa\n");
		return 1;
	}	
	else
	{
		printf("bb\n");
		return 2;
	}
}

int main(void)
{
	int *n1 = (int *)malloc(sizeof(int));
	union str_n2 n2;
	klee_make_symbolic(&n2, sizeof(n2), "n2");
	*n1 = 15;
	compare(n1, &n2.uiRet);

	/* освобождение памяти */
	free(n1);
	
	return 0;
}
