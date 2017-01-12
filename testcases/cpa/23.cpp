extern void __assert_fail();

int main() {
	int n;
	int sum;
	int i;

	if(!(n>=0 && sum==0 && i==0)) {
		 return 0;
	}
	while(i<n) {
	sum=sum+i; i++;
	}
	if(!(sum>=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}