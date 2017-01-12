extern void __assert_fail();

int main() {
	int x;
	int y;

	if(!( y>0 || x>0)) {
		return 0;
	}
	while(x+y<=-2)
		if (x>0) {
			x++;
		} else {
			y++;
		}
	if(!(x>0 || y>0)) {
		goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}
