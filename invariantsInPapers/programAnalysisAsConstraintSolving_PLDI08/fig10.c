Bug1(int y, n) {
	x = 0;
	if (y < 9) {
		while (x < n) {
			assert (x < 200);
			x = x + y;
		}
	} else {
		while (x >= 0) {
			x++;
		}
	}
}
