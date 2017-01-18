int main() {
	int x;
	int y;

	assume( x<y);
	while( x<y) { 
		if(x<0 && y<0) {
			x=x+7; y=y-10;
		} else if (x>=0 && y<0) {
			x=x+10; y=y-10;
		} else if (x<0 && y>=0) {
			x=x+7; y=y+3;
		} else {
			x=x+10; y=y+3;
		}
	}
	assert( x >= y && x <= y + 16);
	return 0;
}
