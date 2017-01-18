#include <assert.h>

int main() {
	int x;
	int n;

	if(!(x==0 && n>0)) 
		return 0;
	while(x<n) {
		x++;
	}
	assert(x==n);
	return 0;
}