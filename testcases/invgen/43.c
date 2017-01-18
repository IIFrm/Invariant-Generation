int main() {
	int x;
	int y;
	int t;

	assume(x!=y && y==t);
	while(1) {
		if(x>0) y=y+x;
		assert(y>=t);
	}
	return 0;
}
