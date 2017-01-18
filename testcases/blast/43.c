#include <assert.h>

int main() {
	int x;
	int y;
	int t;

	if(!(x!=y && y==t)) 
		return 0;
	while(1) {
		if(x>0) y=y+x;
		assert(y>=t);
	}
	return 0;
}