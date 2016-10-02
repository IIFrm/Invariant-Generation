#include <assert.h>

int NONDET;

void main() {
  int n,j,i,k;

  tmpl("(le(i,j,k,n),le(i,j,k,n))");
  i = 0;
  k = 0;

  assume ( j<=n );
  while ( j <= n ) {
    //    tmpl("le(i,j,k,n)");
    // i = 0;
    // k = 0;
    assume( i >= 0);
    /*
    while( i < n ) {
      //      tmpl("le(i,j,k,n)");
      assert( k>=i);
      i++;
      k++;
    }
    */
    j++;
  }
  assert( i>= 0);
  /*
  j = 0;
  while( j < n ) {
    //    tmpl("le(i,j,k,n)");
    assert(k>0);
    j++;
    k--;
  }
  */
}
