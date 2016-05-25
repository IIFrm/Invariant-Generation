extern void __assert_fail();

int main() {
	int i;

	if(!( i < 10 && i > -10)) {
		 return 0;
	}
	while( i * i < 100) {
	 i = i + 1;
	}
	if(!( i == 10)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}