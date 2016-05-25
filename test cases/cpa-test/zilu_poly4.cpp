extern void __assert_fail();

int main() {
	int i;
	int j;

	if(!(i*i < j*j)) {
		 return 0;
	}
	while(i*i < j*j) {
	 if (j > 0) { j = j - 1; } else { j = j + 1; }
	}
	if(!(i*i == j*j)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}