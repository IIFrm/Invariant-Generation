# 1 "19.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "19.c"
int unknown1(){
    int x; return x;
}

int unknown2(){
    int x; return x;
}

int unknown3();
int unknown4();

void main(int n, int m)
{
  int n = unknown1(), m = unknown2();
  int x=0;
  int y;
  y = m;
  if(n < 0)
    return;
  if(m < 0)
    return;
  if(m > n-1)
    return;
  while(x<=n-1) {
    x++;
    if(x>=m+1) y++;
    else if(x > m) return;
    x = x;
  }
  if(x < n)
    return;
  if(y >= n+1)
  {goto ERROR; ERROR:;}
}
