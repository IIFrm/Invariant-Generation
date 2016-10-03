lock = 0;
new = old + 1;

while (new != old) {
	lock = 1;
	old = new;
	if (*) {
		lock = 0;
		new++;
	}
}

if (lock == 0)
	error();
