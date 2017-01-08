extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( y == x)) {
		 return 0;
	}
	while(1) {
	 x++; y++;
		if(!(x == y)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}