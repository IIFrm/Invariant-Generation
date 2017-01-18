#include <assert.h>

int main() {
	int x;
	int y;
	int z;

	if(!(x == y && y == 0 && z==0)) 
		return 0;
	while(1) {
		x++;y++;z-=2;
		assert(x == y && x >= 0 && x+y+z==0);
	}
	return 0;
}