void foo(int a)
{
	int i, c;
	i = 0; 
	c = 0;
	while (i < 1000) {
		c = c + i;
		i = i + 1;
	}
	assume(a <= 0);
	error();
}
