#include <assert.h>
int unknown1();
int unknown2();
int unknown3();
int unknown4();

/*
 * Taken from Gulwani PLDI'08:
 * Program Analysis as Constraint Solving
 */

void main() {
  int x,y;
    y=1;
  x = -50;
  while( x < 0 ) {
	x = x+y;
	y++;
  }
  assert(y>0);
}
//x>=0 -> Loop(x,x',y,y')
//x<0 && x'=x+y && y'=y+1 -> Loop(x,x',y,y')
//x=-50 && Loop(x,x',y,y') -> Trace(y,y')
//Trace(y,y') -> y'>0