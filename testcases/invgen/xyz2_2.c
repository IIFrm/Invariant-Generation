int main() {
	int x;
	int y;
	int z;

	assume(x == y && x >= 0 && x+y+z==0);
	while(x > 0) {
		x--; y--; z++; z++;
	}
	assert(z<=0);
	return 0;
}