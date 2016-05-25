extern void __assert_fail();

int main() {
	int x;

	if(!(x>=0)) {
		 return 0;
	}
	while((x>=0) && (x<10) ) {
	 x=x+1;
	}
	if(!(x>=10)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}