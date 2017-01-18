int main() {
	int i;
	int j;

int x, y;
x = 0; y = 0;
	int flag;
	assume(i==0 && j==0);
	while(1) {
		x++; y++; i+=x; j+=y; if (flag) j+=1;
		assert(j>=i);
	}
	return 0;
}
