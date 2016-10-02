# 1 "f2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "f2.c"
int nondet();

void main () {

  int x, y, z, w;
  x=y=z=w=0;


  while (nondet() ) {

    if (nondet()) {x++; y = y+2;}
    else if (nondet()) {
       if (x >= 4) {x++; y = y+3; z = z+10; w = w+10;}
    }
    else if (x >= z && w >= y+1) {x = -x; y = -y; }
    x = x;
  }

  if (3*x <= y-1)
    goto ERROR;

  return;
ERROR:;
}
