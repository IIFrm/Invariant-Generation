int main() {
	int low;
	int mid;
	int high;

	assume(low == 0 && mid >= 1 && high == 2*mid);
	while(mid > 0) {
		low = low + 1; high = high - 1; mid = mid - 1;
	}
	assert(low == high);
	return 0;
}