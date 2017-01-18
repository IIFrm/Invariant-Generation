int main() {
	int x;
	int y;
	int z;

	assume(x == y && y == 0 && z==0);
	while(1) {
		x++;y++;z-=2;
		assert(x == y && x >= 0 && x+y+z==0);
	}
	return 0;
}
