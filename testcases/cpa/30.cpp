extern void __assert_fail();

int main() {
	int i;
	int c;

	if(!(c==0 && i==0)) {
		 return 0;
	}
	while(i<100) {
	c=c+i; i=i+1; if (i<=0) break;
	}
	if(!(c>=0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}