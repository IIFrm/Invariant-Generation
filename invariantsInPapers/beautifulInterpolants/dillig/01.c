int unknown1(){
  int x; return x;
}
int unknown2();
int unknown3();
int unknown4();

/*
 * IC3 motivating example
 */ 

void main()
{
 int x=1; int y=1;
 while(unknown1()) {
   int t1 = x;
   int t2 = y;
   x = t1+ t2;
   y = t1 + t2;
 }
 if(y < 1)
 {
   goto ERROR;
   ERROR:
 }
   ;
}

