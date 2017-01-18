int main() {
	int i;
	int j;

	assume(i==0 && j==0);
	while(i<100) {
		j+=2; i++;
	}
	assert(j==200);
	return 0;
}