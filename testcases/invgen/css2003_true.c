int main() {
	int i;
	int k;

	assume(0 <= k && k <= 1 && i == 1);
	while(1) {
		i = i + 1; k = k - 1;
		assert(1 <= i + k && i + k <= 2 && i >= 1);
	}
	return 0;
}
