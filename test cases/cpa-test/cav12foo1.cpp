int main() {
	int x;
	int y;

	if(!(x == y && y == 0 )) {
	 goto ERROR;
	}

	while(rand()) {
	x++;y++;
	}

	if(!(x == y && x >= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}