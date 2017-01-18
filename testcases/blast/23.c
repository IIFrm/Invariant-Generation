#include <assert.h>

int main() {
	int n;
	int sum;
	int i;

	if(!(n>=0 && sum==0 && i==0)) 
		return 0;
	while(i<n) {
		sum=sum+i; i++;
	}
	assert(sum>=0);
	return 0;
}