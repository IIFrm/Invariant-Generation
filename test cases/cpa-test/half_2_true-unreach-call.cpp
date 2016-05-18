int main() {
	int i;
	int k;
	int n;

	if(!(i==0 && k==n && n>=0)) {
	 goto ERROR;
	}

	while(i < n) {
	k--; i=i+2;
	}

	if(!( k==n-(n+1)/2)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
