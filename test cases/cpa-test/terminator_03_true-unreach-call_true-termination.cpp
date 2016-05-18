int main() {
	int x;
	int y;

	if(!( y > 0)) {
	 goto ERROR;
	}

	while(x < 100) {
	x = x + y;
	}

	if(!((y > 0 && x >= 100))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
