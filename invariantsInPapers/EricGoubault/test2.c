int i ; 
int j ;

void main() {
  i = 150 ;
  j = 175;
  
  while (j >= 100){ 
    i++; 
    if( j - i <= 0 ){ 
      j = j - 2;
      i = i - 1; 
    } 
  }
}
