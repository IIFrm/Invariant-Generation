#include <math.h>
#include "nrutil.h"

int NONDET;

void main(int n)
{
  int i,j,k,l,m;
  
  //tmpl("(le(n,m,l,i,j,k))");
    tmpl("(le(n,m,l,i,j,k),le(n,m,l,i,j,k))");

  assume(n>m);
  if (m<=n) { i = m; } else { i = n; } 

  for ( ;i>=1;i--) { // Accumulation of left-hand transformations. 
    l=i+1;

    assert(1<=i);
    assert(i<=n); 

    for (j=l;j<=n;j++) {
      assert(1<=i);
      assert(i<=m);
      assert(1<=j);assert(j<=n);
    }

    if ( NONDET ) {
      for (j=l;j<=n;j++) {
	for (k=l;k<=m;k++) {
	  assert(1<=k);assert(k<=m);
	  assert(1<=i);assert(i<=n);
	  assert(1<=j);assert(j<=n);
	}

	assert(1<=i);assert(i<=m);
	assert(1<=i);assert(i<=n);
	for (k=i;k<=m;k++) {
	  assert(1<=k);assert(k<=m);
	  assert(1<=j);assert(j<=n);
	  assert(1<=i);assert(i<=n);
	  }
      }
      for (j=i;j<=m;j++) { 
	assert(1<=j);assert(j<=m); 
	assert(1<=i);assert(i<=n);
      }
    } else for (j=i;j<=m;j++) { 
      assert(1<=j);assert(j<=m); 
      assert(1<=i);assert(i<=n);
    }
    
    assert(1<=i);assert(i<=m); 
    assert(1<=i);assert(i<=n);
    }
}
