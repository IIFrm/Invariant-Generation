extern void __assert_fail();

int main() {
	int i;
	int n;
	int sum;

	if(!(i==0 && n>=0 && n<=100 && sum==0)) {
		 return 0;
	}
	while(i<n) {
	sum = sum + i; i++;
	}
	if(!(sum>=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}