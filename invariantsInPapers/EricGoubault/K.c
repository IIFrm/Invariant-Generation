int main(void)
{
  float x0, x1, x2;
  int i;
  int n;

  n = IBETWEEN(100,100);
  x0 = 11/2.0;
  x1 = 61/11.0;

  for (i=1 ; i<=n ; i++)
  {  
    x2 = 111 - (1130 - 3000/x0) / x1;
    x0 = x1;
    x1 = x2; 
    FPRINT(x1);
   }
}
