# 1 "35.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "35.c"
int unknown1();
int unknown2();
int unknown3();
int unknown4();





void main() {
  int n;
  int x= 0;
  while(x<=n-1) {
    x++;
  }
  if(x < n)
    return;
  if(n>=1 && (x<=n-1 || x >= n+1))
  {goto ERROR; ERROR:;}

}
