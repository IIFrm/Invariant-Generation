extern void __assert_fail();

int main() {
	int i;
	int j;
	int k;

	if(!(i==0 && j==0)) {
		 return 0;
	}
	while(i <= k) {
	i++; j=j+1;
	}
	if(!(j==i)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}