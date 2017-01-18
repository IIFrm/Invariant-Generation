int main() {
	int x;
	int y;

	assume( y>0 || x>0);
	while(x+y<=-2) {
		if (x>0) x++;
		else y++;
	}
	assert(x>0 || y>0);
	return 0;
}
