extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( x<y)) {
		 return 0;
	}
	while( x<y) {
	
branchcondition=(x<0 && y<0)
branch=x=x+7; y=y-10;
#branchcondition=(x>=0 && y<0)
#branch=x=x+10; y=y-10;
branchcondition=(x<0 && y>=0)
branch=x=x+7; y=y+3;
branchcondition=
branch=x=x+10; y=y+3;
	}
	if(!( x >= y && x <= y + 16)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}