int main() {
	int x;
	int y;
	int k;

int j; int i;
j=0;
	assume(x+y==k);
	while(1) {
		if(j==i) {x++;y--;} else {y++;x--;} j++; 
		assert(x+y==k);
	}
	return 0;
}
