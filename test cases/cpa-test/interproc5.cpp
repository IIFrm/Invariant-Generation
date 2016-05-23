int main() {
	int x;
	int y;

	if(!( x<y)) {
	 return 0;
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
