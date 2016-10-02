#include <assert.h>
int unknown1();
int unknown2();
int unknown3();
int unknown4();

/*
 * Based on ex3 from NECLA Static Analysis Benchmarks
 */


void main()
{
  int j=0;
  int i;
  int x=100;
   
   
  for (i =0; i< x ; i++){
    j = j + 2;
  }

  static_assert(j == 2*x);
}


//i>=x -> for(x,i,ip,j,jp)
//i<x && jp=j+1 && ip=i+1 && for(x,ip,ipp,jp,jpp) -> for(x,i,ipp,j,jpp)
//j=0 && i=0 && x=100 && for(x,i,ip,j,jp) -> Trace(jp,x)
//Trace(j,p) -> (j==2*x)