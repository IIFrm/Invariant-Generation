int main() {
	int x;
	int y;

	if(!(x == 1 && y == 0)) {
	 return 0;
	}

	while(nondet()) {
	 x = x + y; y = y + 1;
	}

	if(!(x >= y)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
