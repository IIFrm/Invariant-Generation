extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( x == y && y >=0)) {
		 return 0;
	}
	while(x!=0) {
	x--; y--; if (x<0 || y<0) break;
	}
	if(!(y==0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}