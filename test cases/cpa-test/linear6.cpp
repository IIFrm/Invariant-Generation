int main() {
	int i;
	int j;
	int r;

	if(!(r > i + j)) {
	 goto ERROR;
	}

	while(i > 0) {
	 i = i - 1; j = j + 1;
	}

	if(!(r > i + j)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
