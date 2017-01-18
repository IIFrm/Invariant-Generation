int main() {
	int i;
	int j;
	int k;

	assume(i<j && k>i-j);
	while(i<j) {
		k=k+1; i=i+1;
	}
	assert(k > 0);
	return 0;
}