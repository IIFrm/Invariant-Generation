int main() {
	int x;

	int loop_times;
	loop_times = 10;
	if(!((x>=0) && (x<=50))) {
	 goto ERROR;
	}

	while(loop_times-->0) {
	 if (x>50) x++;
		if (x == 0) {
			x ++;
		} else x--;
	}

	if(!((x>=0) && (x<=50))) {
	 goto ERROR;
	}
	return 0;

ERROR: 
	return 1;
}
