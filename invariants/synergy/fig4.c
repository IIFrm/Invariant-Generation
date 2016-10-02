void foo(int a[]) 
{
	int i, j;
	i = 0;
	j = 1;
	a[j] = 0;
	while (i < 1000) {
		a[j] = a[j] + i;
		i = i + 1;
	}
	assume(a[0] <= 0);
	error();
}
