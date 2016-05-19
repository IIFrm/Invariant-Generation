int main() {
	int x;
	int y;
	int z;

	if(!(x==y)) {
	 return 0;
	}

	while(nondet()) {
	x+=10; y+=1;
	}

	if(!(x>z || y<z+1)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
