program test3
beginprogram
  i = 150;
  j = 175;
  while ( (100 <= j) and (j <= 300)) do 
  i = i+1; 
    if( j <= i ) then begin 
      j = j - 2;
      i = i - 1; 
    end
  done
endprogram
