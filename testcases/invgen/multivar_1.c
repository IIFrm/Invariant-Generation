int main() {
	int x;
	int y;

	assume( y == x);
	while(1) {
		 x++; y++;
		assert(x == y);
	}
	return 0;
}
