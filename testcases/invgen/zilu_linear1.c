int main() {
	int x;
	int y;

	assume( x<y);
	while( x<y) {
		 if (x < 0) x = x + 7; else x = x + 10;
if (y < 0) y = y - 10; else y = y + 3;
	}
	assert( x >= y && x <= y + 16);
	return 0;
}