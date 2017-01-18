#include <assert.h>

int main() {
	int x;
	int y;

	if(!(x<y)) 
		return 0;
	while(x<y) {
		 x=x+1;
	}
	assert(x==y);
	return 0;
}