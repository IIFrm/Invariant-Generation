extern void __assert_fail();

int main() {
	int x;

	if(!((x>=40) || (x<=0 && x>=-20))) {
		 return 0;
	}
	while(1) {
	if(x>=40) x++; else if (x<-20) x--; else if (x==39) x--; else if (x>0) x++;
		if(!((x>=40) || (x<=0 && x>=-20))) {
			 goto ERROR;
		}
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}