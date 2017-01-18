#include <assert.h>

int main() {
	int x;

	if(!(x>=0)) 
		return 0;
	while((x>=0) && (x<10) ) {
		 x=x+1;
	}
	assert(x>=10);
	return 0;
}