#include <assert.h>

void main() {
  int n;
  int i = 0;
  int k = 0;
  while( i < n ) {
   tmpl("(le(i,j,k,n),le(i,j,k,n))");
	i++;
	k = k + 2;
  }
  int j = 0;
  while( j < n ) {
   tmpl("(le(i,j,k,n),le(i,j,k,n))");
    if(k <= 0) ERROR:;
	j = j + 2;
	k--;
  }
}
