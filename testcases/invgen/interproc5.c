int main() {
	int x;
	int y;

	assume( x<y);
	while( x<y) {
		 x=x+100;
	}
	assert( x >= y && x <= y + 99);
	return 0;
}