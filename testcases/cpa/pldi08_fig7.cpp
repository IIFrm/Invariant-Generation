extern void __assert_fail();

int main() {
	int x;

	if(!(x==1 || x==2)) {
		 return 0;
	}
	while(1) {
	if(x==1) x=2; else if (x==2) x=1;
		if(!(x<=8)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}