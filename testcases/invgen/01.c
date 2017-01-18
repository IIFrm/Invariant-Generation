int main() {
	int x;
	int y;

	assume(x==1 && y==1);
	while(1) {
		x=x+y; y=x;
		assert(y>=1);
	}
	return 0;
}
