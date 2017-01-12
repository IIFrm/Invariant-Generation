extern void __assert_fail();

int main() {
	int i;
	int j;
	int n;

	if(!(i==0 && j==0 && n>=0)) {
		 return 0;
	}
	while(i<=n) {
	i++; j+=i;
	}
	if(!(i+j>2*n)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}