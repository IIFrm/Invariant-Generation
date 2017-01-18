int main() {
	int x;

	assume(x>=0);
	while(x<100 && x>=0) {
		x++;
	}
	assert(x>=100);
	return 0;
}