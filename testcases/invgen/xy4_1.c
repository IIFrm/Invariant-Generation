int main() {
	int x;
	int y;

	assume(x == y && y == 0 );
	while(1) {
		x+=4;y++;
		assert(x == 4*y && x >= 0);
	}
	return 0;
}
