extern void __assert_fail();

int main() {
	int i;
	int k;

	if(!(0 <= k && k <= 1 && i == 1)) {
		 return 0;
	}
	while(1) {
	i = i + 1; k = k - 1;
		if(!(1 <= i + k && i + k <= 2 && i >= 1)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}