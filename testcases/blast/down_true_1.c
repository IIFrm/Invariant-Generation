#include <assert.h>

int main() {
	int i;
	int k;
	int n;

	if(!( (i==0) && (k==0) && (n>0))) 
		return 0;
	while(i < n) {
		i++;k++;
	}
	assert( (i == k) && (k == n));
	return 0;
}