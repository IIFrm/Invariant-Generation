#include <math.h>
#define _EPS        0.00000001   /* 10^-8 */
int main ()
{   
    double xn, xnp1, residu, Input, Output, should_be_zero;
    int i;
    Input = __BUILTIN_DAED_FBETWEEN(16.0,16.1); 
    xn = 1.0/Input; xnp1 = xn;    
    residu = 2.0*_EPS*(xn+xnp1)/(xn+xnp1);
    i = 0;
    while (fabs(residu) > _EPS) { 
      xnp1 = xn * (1.875 + Input*xn*xn*(-1.25+0.375*Input*xn*xn));
      residu = 2.0*(xnp1-xn)/(xn+xnp1);
      xn = xnp1;
      i++;
    }
    Output = 1.0 / xnp1; 
    should_be_zero = Output-sqrt(Input);
    return 0;
}
