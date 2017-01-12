extern void __assert_fail();

int main() {
	int l;

 int n; int i;
 i = l;
	if(!( l>0)) {
		 return 0;
	}
	while( i < n) {
	i++;
	}
	if(!(l>=1)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}