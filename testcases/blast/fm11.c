#include <assert.h>

int main() {
	int i;
	int j;

	if(!(i==0 && j==0)) 
		return 0;
	while(i<100) {
		j+=2; i++;
	}
	assert(j==200);
	return 0;
}