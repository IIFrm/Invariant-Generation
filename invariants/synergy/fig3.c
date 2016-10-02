void foo(int y)
{
	lock.state = U;
	do {
		lock.state = L;
		x = y;
		if (*) {
			lock.state = U;
			y++;
		}
	} while (x != y);
	
	if (lock.state != L)
		error();
}
