int main() {
	int x;
	int y;

	assume(x == y && x >= 0);
	while(x > 0) {
		x--; y--;
	}
	assert(y>=0);
	return 0;
}