#include <stdio.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

  scanf("%d",&number);
  result = fibonacci(number);   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
}
// recursion
/* int fibonacci(int x){

	if(x < 3)
		return 1;
	else
		return fibonacci(x-1) + fibonacci(x-2);
} */

// non-recursion
/* int fibonacci(int x){
 
	int p1, p2, out;
	int i;
	p1 = p2 = 1;
	if(x < 3)
		return 1;
	for(i=0; i < x-2; i++){
		out = p1 + p2;
		p2 = p1;
		p1 = out;
	}
	return out;
} */
