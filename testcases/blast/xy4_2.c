#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x == 4*y && x >= 0)) 
		return 0;
	while(x > 0) {
		x-=4; y--;
	}
	assert(y>=0);
	return 0;
}