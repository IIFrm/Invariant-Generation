# 1 "03.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "03.c"
int unknown1(){
    int x; return x;
}

int unknown2()
{
    int x; return x;
}

int unknown3();
int unknown4();

int main()
{
  int k=1;
  int w = 1;
  while(unknown1()) {
    int z = unknown2();
    if(z>5) w++;
    k+=w;
  }
  if(k <= 0)
    {
      goto ERROR;
       ERROR:;
    }
}
