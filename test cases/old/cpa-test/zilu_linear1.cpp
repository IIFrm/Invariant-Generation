extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( x<y)) {
		 return 0;
	}
	while( x<y) {
	 if (x < 0) x = x + 7; else x = x + 10; if (y < 0) y = y - 10; else y = y + 3;
	}
	if(!( x >= y && x <= y + 16)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}