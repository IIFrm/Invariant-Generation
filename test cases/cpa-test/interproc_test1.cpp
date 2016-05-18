int main() {
	int x;

	if(!(x<0)) {
	 goto ERROR;
	}

	while(x<10 ) {
	 x=x+1;
	}

	if(!(x==10)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
