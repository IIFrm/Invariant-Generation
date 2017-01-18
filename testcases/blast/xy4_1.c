#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x == y && y == 0 )) 
		return 0;
	while(1) {
		x+=4;y++;
		assert(x == 4*y && x >= 0);
	}
	return 0;
}