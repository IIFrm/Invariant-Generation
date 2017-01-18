int main() {
	int i;
	int c;

	assume(c==0 && i==0);
	while(i<100) {
		c=c+i; i=i+1; if (i<=0) break;
	}
	assert(c>=0);
	return 0;
}