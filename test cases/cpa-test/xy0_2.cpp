extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!(x == y && x >= 0)) {
		 return 0;
	}
	while(x > 0) {
	x--; y--;
	}
	if(!(y==0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}