int main(int n0, int n1) {
  int i0 = 0;
  int k = 0;

  tmpl("2");
  while( i0 < n0 ) {
    i0++;
    k++;
  }
  int i1 = 0;
  while( i1 < n1 ) {
    i1++;
    k++;
  }
  int j1 = 0;
  while( j1 < n1 ) {
    if(k <= 0) ERROR:;
    j1++;
    k--;
  }
  int j0 = 0;
  while( j0 < n0 ) {
    if(k <= 0) ERROR:;
    j0++;
    k--;
  }
  return 0;
}
