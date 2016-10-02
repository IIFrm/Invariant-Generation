#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int main(int argc, char* argv[]) {
  int c1 = 4000;
  int c2 = 2000;
  int c3 = 10000;
  int n, v;
  int i, k, j;

  if (argc == 2) 
    srandom(atoi(argv[1]));
  else {
    printf("Usage: randomseed\n");
    return -1;
  }

  n = random() % 10;

  k = 0;
  i = 0;
  while( i < n ) {
    i++;
    v = random() % 2;
    if( v == 0 )
      k += c1;
    else if( v == 1 )
      k += c2;
    else
      k += c3;
  }

  j = 0;
  while( j < n ) {
    assert(k > 0);
    j++;
    k--;
  }

  return 0;
}
