int main() {
	int xa;
	int ya;

	assume(xa + ya > 0);
	while(xa > 0) {
		xa--; 
ya++;
	}
	assert(ya >= 0);
	return 0;
}