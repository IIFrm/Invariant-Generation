int main() {
	int j;
	int k;
	int n;

	if(!( (j==n) && (k==n) && (n>0))) {
	 return 0;
	}

	while(j>0 && n>0) {
	j--;k--;
	}

	if(!( (k == 0))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
