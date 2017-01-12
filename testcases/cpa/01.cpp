extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!(x==1 && y==1)) {
		 return 0;
	}
	while(1) {
	x=x+y; y=x;
		if(!(y>=1)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}