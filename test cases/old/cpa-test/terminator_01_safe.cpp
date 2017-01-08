extern void __assert_fail();

int main() {
	int x;

	if(!(x>=0)) {
		 return 0;
	}
	while(x<100 && x>=0) {
	x++;
	}
	if(!(x>=100)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}