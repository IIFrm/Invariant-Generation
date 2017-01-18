#include <assert.h>

int main() {
	int x;
	int y;

	if(!( x == y && y >=0)) 
		return 0;
	while(x!=0) {
		x--; y--; if (x<0 || y<0) break;
	}
	assert(y==0);
	return 0;
}