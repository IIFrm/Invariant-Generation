int main() {
	int i;
	int k;
	int n;

	assume(i==0 && k==0);
	while(i<n) {
		i++; k++;
	}
	assert(k>=n);
	return 0;
}