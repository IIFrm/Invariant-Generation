#define epsilon 0.0000000001

void main() {
  double xi, xsi, A, temp;
  signed int *PtrA, *Ptrxi;
  int cond, exp, i;
  /* value from which we want to take the inverse */
 A = __BUILTIN_DAED_DBETWEEN(20.0,30.0); 
 
  /* initial condition */  
  PtrA = (signed int *) (&A);
  Ptrxi = (signed int *) (&xi);
  exp = (signed int) ((PtrA[0] & 0x7FF00000) >> 20) - 1023;
  xi = 1;
  Ptrxi[0] = ((1023-exp) << 20);

  cond = 1;
  i = 0;
  while (cond) {
    xsi = 2*xi-A*xi*xi;
    temp = xsi-xi;
    cond = ((temp > epsilon) || (temp < -epsilon));
    xi = xsi;
    i++;
  }
}
