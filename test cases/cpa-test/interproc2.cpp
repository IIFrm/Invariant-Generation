extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!(x<y)) {
		 return 0;
	}
	while(x<y) {
	 x=x+1;
	}
	if(!(x==y)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}