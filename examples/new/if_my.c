#include "klee/klee.h"
#include <unistd.h>

void ifs(int a, int b)
{
	if (a == b) 
		a = 1;
	else 
		a = 2;
}

int main()
{
	char a;
	char b;
	klee_make_symbolic(&a, sizeof(a), "a");
	klee_make_symbolic(&b, sizeof(b), "b");
	ifs(a, b);
	return 0;
}
