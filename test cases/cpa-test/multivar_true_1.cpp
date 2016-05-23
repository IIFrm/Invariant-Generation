int main() {
	int x;
	int y;

	if(!( y == x)) {
	 return 0;
	}

	while(nondet()) {
	 x++; y++;
	}

	if(!(x == y)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
