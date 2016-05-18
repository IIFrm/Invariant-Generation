int main() {
	int i;
	int k;

	if(!( 0<=k && k <= 10 && i == 0)) {
	 goto ERROR;
	}

	while( i < 32 * k) {
	i += k;
	}

	if(!(i == 32 * k)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
