extern void __assert_fail();

int main() {
	int k;
	int j;
	int n;

	if(!(n>=1 && k>=n && j==0)) {
		 return 0;
	}
	while(j<=n-1) {
	j++; k--;
	}
	if(!(k>=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}