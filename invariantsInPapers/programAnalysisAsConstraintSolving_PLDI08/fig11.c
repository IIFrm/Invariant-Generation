// program a
NT1(int x, y) {
	while (x >= 0) {
		 x = x + y;
		 u++;
	}
}


// program b
NT2(int i) {
	even = 0;
	while (i >= 0) {
		if (even == 0) {
			i--;
		} else {
			i++;
		}
		even = 1 - even;
	}
}
