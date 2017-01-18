int main() {
	int x;
	int y;

	assume( x < 100 && y < 100);
	while( x < 100 && y < 100 ) {
		 x=x+1; y=y+1;
	}
	assert( x == 100 || y == 100);
	return 0;
}