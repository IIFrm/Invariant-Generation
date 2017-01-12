extern void __assert_fail();

int main() {
	int i;
	int j;

	if(!(i==0 && j==0)) {
		 return 0;
	}
	while(i<100) {
	j+=2; i++;
	}
	if(!(j==200)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}