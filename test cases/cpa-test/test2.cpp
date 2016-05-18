int main() {
	int i;
	int k;

	if(!(i+k>-50 && i+k<50 && i==0)) {
	 goto ERROR;
	}

	while(i != 1000) {
	 i=i+1; k=k-1;
	}

	if(!(i+k>-50 && i+k<50)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
