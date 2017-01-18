int main() {
	int x;
	int y;
	int z;

	assume( y>0 || x>0 || z>0);
	while(1) {
		if (x>0)
			x++;
		else if (y>0)
			y++;
		else z++;
		assert(x>0 || y>0 || z>0);
	}
	return 0;
}
