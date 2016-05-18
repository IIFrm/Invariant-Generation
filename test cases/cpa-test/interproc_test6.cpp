int main() {
	int i;

	if(!( i < 10 && i > -10)) {
	 goto ERROR;
	}

	while( i * i < 100) {
	 i = i + 1;
	}

	if(!( i == 10)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
