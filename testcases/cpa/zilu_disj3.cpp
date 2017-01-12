extern void __assert_fail();

int main() {
	int x;
	int y;
	int z;

	if(!( y>0 || x>0 || z>0)) {
		 return 0;
	}
	while(
#loop=if (x>0) x++; else x--; x=-1 * x;
branchcondition=x>0
branch=x++;
branchcondition=y>0
branch=y++;
branchcondition=
branch=z++;) {
	
	}
	if(!(x>0 || y>0 || z>0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}