int main() {
	int i;
	int k;
	int n;

	if(!( (i==0) && (k==0) && (n>0))) {
	 return 0;
	}

	while(i < n) {
	i++;k++;
	}

	if(!( (i == k) && (k == n))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
