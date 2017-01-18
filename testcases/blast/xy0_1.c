#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x == y && y == 0 )) 
		return 0;
	while(1) {
		x++;y++;
		assert(x == y && x >= 0);
	}
	return 0;
}