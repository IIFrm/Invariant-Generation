int main() {
	int x;

	assume(x==1 || x==2);
	while(1) {
		if(x==1) x=2; else if (x==2) x=1;
		assert(x<=8);
	}
	return 0;
}
