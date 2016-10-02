foo()
{
	do {
		z = nondet();
		x = 4 * sin(z) * sin(z);
		y = 4 * cos(z) * cos(z);
	} while(*);

	if (x == 2 && y != 2)
		error();
}
