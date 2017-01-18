#include <assert.h>

int main() {
	int x;

	if(!((x>=0) && (x<=50))) 
		return 0;
	while(1) {
		 if (x>50) x++;
		if (x == 0) {
			x ++;
		} else x--;
		assert((x>=0) && (x<=50));
	}
	return 0;
}