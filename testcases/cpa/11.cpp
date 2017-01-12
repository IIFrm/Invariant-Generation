extern void __assert_fail();

int main() {
	int i;
	int j;
	int x;

	if(!(i==0 && j==0 && x>0)) {
		 return 0;
	}
	while(i<x) {
	j=j+2;i++;
	}
	if(!(j==2*x)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}