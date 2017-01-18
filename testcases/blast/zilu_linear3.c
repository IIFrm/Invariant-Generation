#include <assert.h>

int main() {
	int i;
	int j;
	int r;

	if(!(r > i + j)) 
		return 0;
	while(i > 0) {
		 i = i - 1; j = j + 1;
	}
	assert(r > i + j);
	return 0;
}