# 1 "gulv_simp.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gulv_simp.c"
int nondet(){
  int x;
  return x;
}

int main(){
int x = 0, y = 0;
while (nondet()) {
   if (nondet())
     {x = x+1; y = y+100;}
   else if (nondet()){
     if (x >= 4)
       {x = x+1; y = y+1;}
   }



   x = x;
}
if (x >= 4 && y <= 2)
  goto ERROR;

return;
ERROR:;
}
