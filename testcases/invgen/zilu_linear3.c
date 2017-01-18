int main() {
	int i;
	int j;
	int r;

	assume(r > i + j);
	while(i > 0) {
		 i = i - 1; j = j + 1;
	}
	assert(r > i + j);
	return 0;
}