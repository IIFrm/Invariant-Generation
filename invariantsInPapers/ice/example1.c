int foo(int a[], int p)
{
	assume(p >= 25 && p <= 75);
	assume(a[p] == 1);
	assume(\thread_local_array(a, 100));

	int i = 0;
	int j = 0;
	while (i < 100) {
		// invariant (i>p ==> j==1)
		if (a[i] == 1)
			j = 1;
		i = i + 1;
	}
	assert( j == 1);
}
