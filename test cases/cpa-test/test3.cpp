int main() {
	int x;
	int y;
	int n;

	if(!(x==0 && y==0 && n==0)) {
	 goto ERROR;
	}

	while(x < 2 * n) {
	if ( x < n ) { x = x + 1; } else { x = x + 1; y = y + 1; }
	}

	if(!(y == n)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
