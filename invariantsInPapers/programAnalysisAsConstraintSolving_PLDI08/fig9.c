Loop(int n, m, x0, y0) {
	assert(x0 < y0);
	x = x0;
	y = y0;
	while (x < y) {
		x = x + n;
		y = y + m;
	}
}
