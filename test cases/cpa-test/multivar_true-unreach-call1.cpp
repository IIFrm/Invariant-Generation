int main() {
	int x;
	int y;

	if(!( y == x)) {
	 goto ERROR;
	}

	while(rand()) {
	 x++; y++;
	}

	if(!(x == y)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
