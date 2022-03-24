#include <iostream>
#include <math.h>
void sol (int n, int r, int c)
{
	int re = 0;
	while (n != 0)
	{
		if (c & ((int)pow(2,n-1)))
			re += 1;
		if (r & ((int)pow(2,n-1)))
			re += 2;
		if (n == 1)
			break;
		r = r&((int)pow(2,n-1)-1);
		c = c&((int)pow(2,n-1)-1);
		re = re<<2;
		n--;
	}
	std::cout << re;
}

int main ()
{
	int n, r, c = 0;
	std::cin >> n;
	std::cin >> r;
	std::cin >> c;
	sol(n,r,c);
	return (0);
}