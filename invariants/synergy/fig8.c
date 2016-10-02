void foo()
{
	lock.state = L;
	if (*) {
		x0 = x0 + 1;
	} else {
		x0 = x0 - 1;
	}

	if (*) {
		x1 = x1 + 1;
	} else {
		x1 = x1 - 1;
	}

	...
	

	if (*) {
		xn = xn + 1;
	} else {
		xn = xn - 1;
	}

	if (lock.state != L)
		error();
}
