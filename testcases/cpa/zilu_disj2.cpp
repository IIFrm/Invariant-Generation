extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( y>0 || x>0)) {
		 return 0;
	}
	while(
branchcondition=x>0
branch=x++;
branchcondition=
branch=y++;) {
	
	}
	if(!(x>0 || y>0)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}