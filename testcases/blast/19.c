#include <assert.h>

int main() {
	int x;
	int m;
	int n;

	if(!(m>=0 && m<=n-1 && x==0)) 
		return 0;
	while(x<=n-1) {
		x++; if (x>m) m++;
	}
	assert(m<=n);
	return 0;
}