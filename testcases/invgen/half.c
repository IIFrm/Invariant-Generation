int main() {
	int i;
	int k;
	int n;

	assume(i==0 && k==n && n>=0);
	while(i<n) {
		k--; i+=2;
	}
	assert(2*k>=n-1);
	return 0;
}