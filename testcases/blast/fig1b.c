#include <assert.h>

int main() {
	int x;
	int y;

	if(!( y>0 || x>0)) 
		return 0;
	while(x+y<=-2) {
		if (x>0) x++;
		else y++;
	}
	assert(x>0 || y>0);
	return 0;
}
