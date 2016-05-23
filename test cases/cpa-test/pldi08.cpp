int main() {
	int x;
	int y;

	if(!(x < 0)) {
	 return 0;
	}

	while(x < 0) {
	x=x+y; y++;
	}

	if(!(y>=0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
