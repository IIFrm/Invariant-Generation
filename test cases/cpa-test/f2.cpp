int main() {
	int x;
	int y;

	if(!(x + y >= 0)) {
	 goto ERROR;
	}

	while(y > 0) {
	x++; 
y--;
	}

	if(!(x >= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
