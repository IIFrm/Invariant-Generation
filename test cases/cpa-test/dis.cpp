int main() {
	int x;

	if(!((x>=40) || (x<=0 && x>=-20))) {
	 goto ERROR;
	}

	while(rand()) {
	if(x>=40) x++; else if (x<-20) x--; else if (x==39) x--; else if (x>0) x++;
	}

	if(!((x>=40) || (x<=0 && x>=-20))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
