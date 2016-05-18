int main() {
	int x;
	int y;
	int n;

	if(!(n>=0 && x+y==n && x>=0)) {
	 goto ERROR;
	}

	while(x>0) {
	x--;y++;
	}

	if(!(y==n)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
