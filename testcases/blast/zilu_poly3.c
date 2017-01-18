#include <assert.h>

int main() {
	int i;

	if(!( i < 10 && i > -10)) 
		return 0;
	while( i * i < 100) {
		 i = i + 1;
	}
	assert( i == 10);
	return 0;
}