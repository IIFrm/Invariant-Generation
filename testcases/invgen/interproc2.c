int main() {
	int x;
	int y;

	assume(x<y);
	while(x<y) {
		 x=x+1;
	}
	assert(x==y);
	return 0;
}