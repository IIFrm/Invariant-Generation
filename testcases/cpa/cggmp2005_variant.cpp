extern void __assert_fail();

int main() {
	int low;
	int mid;
	int high;

	if(!(low == 0 && mid >= 1 && high == 2*mid)) {
		 return 0;
	}
	while(mid > 0) {
	low = low + 1; high = high - 1; mid = mid - 1;
	}
	if(!(low == high)) {
		 goto ERROR;
	}
	return 0;

ERROR: 
	__assert_fail();
	return 1;
}