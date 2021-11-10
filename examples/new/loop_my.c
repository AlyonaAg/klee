#include "klee/klee.h"

int loop(int a, int b)
{
	while (a < 50)
		a++;
			
}

int main()
{
	char a;
	char b;
	klee_make_symbolic(&a, sizeof(a), "a");
	klee_make_symbolic(&b, sizeof(b), "b");
	loop(a, b);
	return 0;
}
