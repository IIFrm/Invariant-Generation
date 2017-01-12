extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!(x + y >= 0)) {
		 return 0;
	}
	while(y > 0) {
	x++; 
y--;
	}
	if(!(x >= 0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}