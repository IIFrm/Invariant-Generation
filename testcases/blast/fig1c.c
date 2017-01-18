#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x==1 && y==0)) 
		return 0;
	while(1) {
		x=x+y; y++;
		assert(x >= y);
	}
	return 0;
}