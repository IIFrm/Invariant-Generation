PV1(int y)
{
	x = -50;
	while (x < 0) {
		x = x + y;
		y++;
	}
	assert(y>0);
}
