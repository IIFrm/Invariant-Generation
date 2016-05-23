int main() {
	int x;
	int y;

	if(!(x*y>=0)) {
	 return 0;
	}

	while(nondet()) {
	if(x==0) {if (y>0) x++; else x--;} if(x>0) y++; else x--;
	}

	if(!(x*y>=0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
