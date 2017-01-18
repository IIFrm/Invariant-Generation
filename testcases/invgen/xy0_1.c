int main() {
	int x;
	int y;

	assume(x == y && y == 0 );
	while(1) {
		x++;y++;
		assert(x == y && x >= 0);
	}
	return 0;
}
