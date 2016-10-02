# 1 "24.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "24.c"
int unknown1();
int unknown2();
int unknown3();
int unknown4();





void main() {
  int i,j,k,n;

  for (i=0;i<n;i++)
    for (j=i;j<n;j++)
      for (k=j;k<n;k++){
 if(k <= i-1)
 {goto ERROR; ERROR:;}
      }
}
