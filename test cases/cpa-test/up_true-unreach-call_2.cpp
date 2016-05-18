int main() {
	int j;
	int k;
	int n;

	if(!( (j==0) && (k==n) && (n>0))) {
	 goto ERROR;
	}

	while(j<n && n>0) {
	j++;k--;
	}

	if(!( (k == 0))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
