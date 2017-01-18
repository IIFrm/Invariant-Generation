int main() {
	int x;
	int y;

	assume(x < 0);
	while(x<0) {
		x=x+y; y++;
	}
		
	assert(y>=0);
	return 0;
}
