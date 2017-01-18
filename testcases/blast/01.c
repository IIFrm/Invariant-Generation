#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x==1 && y==1)) 
		return 0;
	while(1) {
		x=x+y; y=x;
		assert(y>=1);
	}
	return 0;
}