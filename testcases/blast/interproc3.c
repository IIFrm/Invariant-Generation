#include <assert.h>

int main() {
	int i;
	int j;
	int k;

	if(!(i<j && k>i-j)) 
		return 0;
	while(i<j) {
		k=k+1; i=i+1;
	}
	assert(k > 0);
	return 0;
}