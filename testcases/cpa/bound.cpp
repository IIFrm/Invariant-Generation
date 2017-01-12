extern void __assert_fail();

int main() {
	int i;

	if(!(i>=0 && i<=200)) {
		 return 0;
	}
	while(i>0) {
	i--;
	}
	if(!(i>=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}