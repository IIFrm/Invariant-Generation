#include <assert.h>

int main() {
	int x;
	int y;

	if(!( y == x)) 
		return 0;
	while(1) {
		 x++; y++;
		assert(x == y);
	}
	return 0;
}