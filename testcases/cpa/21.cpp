extern void __assert_fail();

int main() {
	int n;
	int k;

int i;
i=0;
	int flag;
	if(!(n>0 && n<10)) {
		 return 0;
	}
	while(i<n) {
	i++; if(flag) k+=4000; else k+=2000;
	}
	if(!(k>n)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}