int main() {
	int a;
	int b;
	int i;
	int j;

	if(!( a==0 && b==0 && i==0 && j==1)) {
	 goto ERROR;
	}

	while(rand()) {
	a++; b+=(j-i); i+=2; if (i%2==0) j+=2; else j++;
	}

	if(!(a==b)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
