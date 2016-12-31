#include <stdio.h>
#include <add.h>
#include <sub.h>
int main()
{
	int a;
	float b;
	a = add_int(10,20);
	b = add_float(10,20);
	printf("a=%d,b=%f\n",a,b);
	
	return 0;
}