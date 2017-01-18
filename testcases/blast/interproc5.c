#include <assert.h>

int main() {
	int x;
	int y;

	if(!( x<y)) 
		return 0;
	while( x<y) {
		 x=x+100;
	}
	assert( x >= y && x <= y + 99);
	return 0;
}