int main(void)
{
  float x,y,z;

  x = __BUILTIN_DAED_FBETWEEN(0,1);
  y = (x-1)*(x-1)*(x-1)*(x-1);
  z = x*x*x*x - 4*x*x*x + 6*x*x - 4*x + 1;
}
