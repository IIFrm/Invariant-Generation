extern void __assert_fail();

int main() {
	int j;
	int k;
	int n;

	if(!( (j==0) && (k==n) && (n>0))) {
		 return 0;
	}
	while(j<n && n>0) {
	j++;k--;
	}
	if(!( (k == 0))) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}