#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x*y>=0)) 
		return 0;
	while(1) {
		if(x==0) {if (y>0) x++; else x--;} if(x>0) y++; else x--;
		assert(x*y>=0);
	}
	return 0;
}