#include <assert.h>

int main() {
	int i;

	if(!(i>=0 && i<=200)) 
		return 0;
	while(i>0) {
		i--;
	}
	assert(i>=0);
	return 0;
}