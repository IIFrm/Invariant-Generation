extern void __assert_fail();

int main() {
	int x;
	int y;
	int t;

	if(!(x!=y && y==t)) {
		 return 0;
	}
	while(1) {
	if(x>0) y=y+x;
		if(!(y>=t)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}