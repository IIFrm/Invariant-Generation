#include <assert.h>
int unknown1();
int unknown2();
int unknown3();
int unknown4();

void main(int flag)
{

	int x = 0;
	int y = 0;

	int j = 0;
	int i = 0;


	while(unknown1())
	{
	  x++;
	  y++;
	  i+=x;
	  j+=y;
	  if(flag)  j+=1;
	} 
	static_assert(j>=i);
	
}

//!C && x=xp && y=yp && ip=i && jp=j -> Loop(C,flag,X,XP,Y,YP,I,IP,JP)

//C && xp=x+1 && yP=y+1 && ip=i+xp && jp=j+yp && flag && jpp=jp+1 -> Loop(C,X,XP,Y,YP,I,IP,JPP)

//C && xp=x+1 && yP=y+1 && ip=i+xp && jp=j+yp && !flag -> Loop(C,X,XP,Y,YP,I,IP,JP)