int main() {
	int j;
	int k;
	int n;

	assume( (j==n) && (k==n) && (n>0));
	while(j>0 && n>0) {
		j--;k--;
	}
	assert( (k == 0));
	return 0;
}