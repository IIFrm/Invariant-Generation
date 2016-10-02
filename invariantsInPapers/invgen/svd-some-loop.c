
int NONDET;

void main(){
int  n,m,l,i,j,k;

//ssume(n >= 1);
for (i=n;i>=1;i--) { // Accumulation of right-hand transformations. 
  l = i+1;
    if (i < n) {
      if ( NONDET ) {
	for (j=l;j<=n;j++) { // Double division to avoid possible underflow. 

	  assert(1<=j);assert(j<=n);
	  assert(1<=i);assert(i<=n);
	  //	  assert(1<=i);assert(i<=m); // TODO feasible counterexample found, hm
	  //assert(1<=l);assert(l<=n);
	  //  v[j][i]=(a[i][j]/a[i][l])/g;
	}
	for (j=l;j<=n;j++) {
	  // s = 0.0;
	  for (k=l;k<=n;k++) { 

	    //assert(1<=i);assert(i<=m); // TODO feasible counterexample found, hm
	    assert(1<=k);assert(k<=n);
	    assert(1<=j);assert(j<=n);
	    //  s += a[i][k]*v[k][j];
	  }
	  for (k=l;k<=n;k++) { 
	    assert(1<=k);assert(k<=n);
	    assert(1<=j);assert(j<=n);
	    assert(1<=i);assert(i<=n);
	    // v[k][j] += s*v[k][i];
	  }
	  }
      }
      for (j=l;j<=n;j++) { 

        assert(1<=j);assert(j<=n);
	assert(1<=i);assert(i<=n);
	//v[i][j]=v[j][i]=0.0;
	}
    }

    assert(1<=i);assert(i<=n);
    //    v[i][i]=1.0;
     assert(1<=i);assert(i<=n);
    //   g=rv1[i];
    l=i;
  }

}
