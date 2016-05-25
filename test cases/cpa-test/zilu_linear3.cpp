extern void __assert_fail();

int main() {
	int i;
	int j;
	int r;

	if(!(r > i + j)) {
		 return 0;
	}
	while(i > 0) {
	 i = i - 1; j = j + 1;
	}
	if(!(r > i + j)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}