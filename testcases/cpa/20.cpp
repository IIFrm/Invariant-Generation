extern void __assert_fail();

int main() {
	int x;
	int y;
	int k;

int j; int i;
j=0;
	if(!(x+y==k)) {
		 return 0;
	}
	while(1) {
	if(j==i) {x++;y--;} else {y++;x--;} j++; 
		if(!(x+y==k)) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}