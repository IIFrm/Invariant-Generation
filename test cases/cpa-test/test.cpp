int main() {
	int xa;
	int ya;

	if(!(xa + ya > 0)) {
	 goto ERROR;
	}

	while(xa > 0) {
	xa--; 
ya++;
	}

	if(!(ya >= 0)) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
