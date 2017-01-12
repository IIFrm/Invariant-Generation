extern void __assert_fail();

int main() {
	int x;
	int y;
	int z;

	if(!(x == y && x >= 0 && x+y+z==0)) {
		 return 0;
	}
	while(x > 0) {
	x--; y--; z++; z++;
	}
	if(!(z<=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}