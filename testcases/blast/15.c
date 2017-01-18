#include <assert.h>

int main() {
	int k;
	int j;
	int n;

	if(!(n>=1 && k>=n && j==0)) 
		return 0;
	while(j<=n-1) {
		j++; k--;
	}
	assert(k>=0);
	return 0;
}