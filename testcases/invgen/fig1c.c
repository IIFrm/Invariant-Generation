int main() {
	int x;
	int y;

	assume(x==1 && y==0);
	while(1) {
		x=x+y; y++;
		assert(x >= y);
	}
	return 0;
}
