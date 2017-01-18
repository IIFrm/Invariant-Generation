int main() {
	int i;

	assume( i < 10 && i > -10);
	while( i * i < 100) {
		 i = i + 1;
	}
	assert( i == 10);
	return 0;
}