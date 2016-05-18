int main() {
	int x;
	int y;

	if(!(x == 1 && y == 0)) {
	 goto ERROR;
	}

	while(rand()) {
	 x = x + y; y = y + 1;
	}

	if(!(x >= y)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
