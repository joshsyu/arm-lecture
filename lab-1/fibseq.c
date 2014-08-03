#include <stdio.h>
//#define REC /* if wanting to run recursion version, uncomment */
//#define C /* if wanting to complie and run on C, uncomment */
extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

  scanf("%d",&number);
  result = fibonacci(number);   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
}
#ifdef C
// recursion
#ifdef REC
int fibonacci(int x){

	if(x <= 0)
		return 0;
	if(x == 1)
		return 1;
	else
		return fibonacci(x-1) + fibonacci(x-2);
}
#else
// non-recursion
int fibonacci(int x){
 
	int p1, p2, out;
	int i;
	p1 = 1;
	p2 = 0;
	if(x <= 0)
		return 0;
	if(x == 1)
		return 1;
	for(i=0; i < x-1; i++){
		out = p1 + p2;
		p2 = p1;
		p1 = out;
	}
	return out;
}
#endif
#endif
