extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( x < 100 && y < 100)) {
		 return 0;
	}
	while( x < 100 && y < 100 ) {
	 x=x+1; y=y+1;
	}
	if(!( x == 100 || y == 100)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}