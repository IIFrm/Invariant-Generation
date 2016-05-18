int main() {
	int x;
	int y;
	int z;

	if(!(x==y)) {
	 goto ERROR;
	}

	while(rand()) {
	x+=10; y+=1;
	}

	if(!(x>z || y<z+1)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
