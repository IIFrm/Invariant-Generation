int main() {
	int i;
	int j;

	 if (i < 0) i = -i; if (j < 0) j = -j; if (i == 0) i = 1; if (j == 0) j = 1;
	if(!( i * i < j * j)) {
	 goto ERROR;
	}

	while( i < j) {
	 j = j - i; if (j < i) {j = j + i; i = j - i; j = j - i;}
	}

	if(!(j == i)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}