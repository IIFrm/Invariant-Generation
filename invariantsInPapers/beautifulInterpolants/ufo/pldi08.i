# 1 "pldi08.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "pldi08.c"
int main (){

  int x = -50;
  int y;
  while (x < 0){
     x = x + y;
     y++;
  }

  if (y < 0)
    goto ERROR;

  return 1;

ERROR:;


}
