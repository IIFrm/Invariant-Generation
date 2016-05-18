int main() {
	int x;
	int y;

	if(!( x<y)) {
	 goto ERROR;
	}

	while( x<y) {
	 x=x+100;
	}

	if(!( x >= y && x <= y + 99)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
