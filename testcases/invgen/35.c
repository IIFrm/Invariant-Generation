int main() {
	int x;
	int n;

	assume(x==0 && n>0);
	while(x<n) {
		x++;
	}
	assert(x==n);
	return 0;
}