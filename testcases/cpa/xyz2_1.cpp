extern void __assert_fail();

int main() {
	int x;
	int y;
	int z;

	if(!(x == y && y == 0 && z==0)) {
		 return 0;
	}
	while(1) {
	x++;y++;z-=2;
		if(!(x == y && x >= 0 && x+y+z==0)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}