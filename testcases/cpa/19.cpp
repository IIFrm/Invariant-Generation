extern void __assert_fail();

int main() {
	int x;
	int m;
	int n;

	if(!(m>=0 && m<=n-1 && x==0)) {
		 return 0;
	}
	while(x<=n-1) {
	x++; if (x>m) m++;
	}
	if(!(m<=n)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}