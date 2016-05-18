int main() {
	int x;
	int y;

	if(!(x<y)) {
	 goto ERROR;
	}

	while(x<y) {
	 x=x+1;
	}

	if(!(x==y)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
