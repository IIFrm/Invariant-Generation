#include <assert.h>

int main() {
	int n;
	int k;

int i;
i=0;
	int flag;
	if(!(n>0 && n<10)) 
		return 0;
	while(i<n) {
		i++; if(flag) k+=4000; else k+=2000;
	}
	assert(k>n);
	return 0;
}