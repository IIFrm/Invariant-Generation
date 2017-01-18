int main() {
	int x;

	assume(x>=0);
	while((x>=0) && (x<10) ) {
		 x=x+1;
	}
	assert(x>=10);
	return 0;
}