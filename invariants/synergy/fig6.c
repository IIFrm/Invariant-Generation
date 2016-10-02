void foo(int y)
{
	while (y > 0) {
		y = y - 1;
	}
	assume(false);
	error();
}
