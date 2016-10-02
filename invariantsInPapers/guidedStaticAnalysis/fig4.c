volatile bool m, sec;

d = t = s = 0;
while (true)
{
	if (sec) {
		t++;
		s = 0;
	} else {
		if (s < c) {
			d++;
			s++;
		}
	}
}
