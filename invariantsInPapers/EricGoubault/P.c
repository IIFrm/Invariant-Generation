int main(void)
{
  float x,y,z,t;

  x = FBETWEEN(0,1);
  y = (x-1)*(x-1)*(x-1)*(x-1);
  z = x*x;
  z = z*z - 4*x*z + 6*z - 4*x + 1;
  t = z-y;
  FSENSITIVITY(z);
  FSENSITIVITY(t);
}
