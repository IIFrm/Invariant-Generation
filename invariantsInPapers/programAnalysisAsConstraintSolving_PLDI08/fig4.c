//origran a
WP1(int i, j) {
	x = y = 0;
	while (x <= 100) {
		x = x + i;
		y = y + j;
	}
	assert(x >= y);
}


// program b
Merge(int m1, m2, m3) {
	assert(m1>=0 && m2>=0);
	k = i = 0;
	while (i < m1) {
		assert (0 <= k < m3);
		A[k++] = C[i++];
	}

	i = 0;
	while(i < m2) {
		assert (0 <= k < m3);
		A[k++] = C[i++];
	}
}
