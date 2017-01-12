extern void __assert_fail();

int main() {
	int i;
	int k;
	int n;

	if(!(i==0 && k==n && n>=0)) {
		 return 0;
	}
	while(i<n) {
	k--; i+=2;
	}
	if(!(2*k>=n-1)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}