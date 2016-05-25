extern void __assert_fail();

int main() {
	int i;
	int j;

if(i < 0) i = -i; i = i + 1;
	if(!(i*i < j && i >= 1)) {
		 return 0;
	}
	while(i*i < j) {
	 i = i + 1;
	}
	if(!((i - 1) * (i - 1) < j && j <= i * i)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}