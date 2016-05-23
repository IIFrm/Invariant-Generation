int main() {
	int x;
	int y;

	if(!(x == y && y == 0 )) {
	 return 0;
	}

	while(nondet()) {
	x++;y++;
	}

	if(!(x == y && x >= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
