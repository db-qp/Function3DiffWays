// Dawson Black
// 1.1

#include <iostream>
using namespace std;

int foo(int x, int y) // size-n
{
	if (y <= 0) // stopping condition
	{
		return x;
	}
	else if (x <= 0) // stoppiong condition
	{
		return y;
	}
	else if (x >= y) // size-m
	{
		return x + foo(x - 1, y - 2); // constructs size-n out of size-m
	}
	else if (x < y) // size-m
	{
		return y + foo(x - 2, y - 3); // constructs size-n out of size-m
	}
}

int main()
{
	int x, y;

	cout << "Enter an integer: " << endl;
	cin >> x;
	cout << "\nEnter a second integer: " << endl;
	cin >> y;
	cout << "\nThe value of foo(" << x << "," << y << ") is " << foo(x, y) << "." << endl;
}