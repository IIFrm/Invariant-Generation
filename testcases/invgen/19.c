int main() {
	int x;
	int m;
	int n;

	assume(m>=0 && m<=n-1 && x==0);
	while(x<=n-1) {
		x++; if (x>m) m++;
	}
	assert(m<=n);
	return 0;
}