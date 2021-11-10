/*
 * First KLEE tutorial: testing a small function
 */

#include "klee/klee.h"

int get_sign(int x) {
printf("[get_sign]: im here\n");
  if (x == 0)
{
printf("[get_sign]: x == 0\n");
     return 0;
}
  
  if (x < 0)
{
printf("[get_sign]: x < 0\n");
     return -1;
}
  else 
{
	if (x > 50)
{
printf("[get_sign]: x > 50 \n");
     return 1;
}
else
printf("[get_sign]: x < 50 \n");
     return 1;
}
} 

int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return get_sign(a);
} 
