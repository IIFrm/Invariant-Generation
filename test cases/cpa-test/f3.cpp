int main() {
	int x;
	int y;
	int z;

	if(!(x + y + z >= 0)) {
	 goto ERROR;
	}

	while(z > 0) {
	x++; 
y++;
z-=2;
	}

	if(!(x + y >= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
