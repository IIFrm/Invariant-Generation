int main() {
	int x;
	int y;

	if(!( x == y && x >= 0)) {
	 goto ERROR;
	}

	while( x > 0 || x < 0) {
	 x--; y--;
	}

	if(!( y <= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
