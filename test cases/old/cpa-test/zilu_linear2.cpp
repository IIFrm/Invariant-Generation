extern void __assert_fail();

int main() {
	int i;
	int j;
	int k;

	if(!(i<j && k> 0)) {
		 return 0;
	}
	while(i<j) {
	 k=k+1;i=i+1;
	}
	if(!(k > j - i)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}