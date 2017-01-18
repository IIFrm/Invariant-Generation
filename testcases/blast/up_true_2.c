#include <assert.h>

int main() {
	int j;
	int k;
	int n;

	if(!( (j==0) && (k==n) && (n>0))) 
		return 0;
	while(j<n && n>0) {
		j++;k--;
	}
	assert( (k == 0));
	return 0;
}