int main() {
	int n;
	int sum;
	int i;

	assume(n>=0 && sum==0 && i==0);
	while(i<n) {
		sum=sum+i; i++;
	}
	assert(sum>=0);
	return 0;
}