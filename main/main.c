#include <stdio.h>
#include <add.h>
#include <sub.h>
int main()
{
	int a,c;
	float b;
	
	a = add_int(10,20);
	b = add_float(10,20);
	c = add_int(20,10);
	printf("a=%d,b=%f,c=%d\n",a,b,c);
	
	return 0;
}