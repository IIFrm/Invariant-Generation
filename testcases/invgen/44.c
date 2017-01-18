int main() {
	int i;
	int j;
	int k;

	assume(i==0 && j==0);
	while(i <= k) {
		i++; j=j+1;
	}
	assert(j==i);
	return 0;
}