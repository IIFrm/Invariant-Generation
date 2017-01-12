extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!(x==1 && y==0)) {
		 return 0;
	}
	while(1) {
	x=x+y; y++;
		if(!(x >= y)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}