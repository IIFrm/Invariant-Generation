extern void __assert_fail();

int main() {
	int x;
	int n;

	if(!(x==0 && n>0)) {
		 return 0;
	}
	while(x<n) {
	x++;
	}
	if(!(x==n)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}