extern void __assert_fail();

int main() {
	int x;

	if(!((x>=0) && (x<=50))) {
		 return 0;
	}
	while(1) {
	 if (x>50) x++;
		if (x == 0) {
			x ++;
		} else x--;
		if(!((x>=0) && (x<=50))) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}