int main() {
	int i;
	int k;
	int n;

	assume( (i==0) && (k==0) && (n>0));
	while(i < n) {
		i++;k++;
	}
	assert( (i == k) && (k == n));
	return 0;
}