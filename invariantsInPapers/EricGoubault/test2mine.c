program test2
beginprogram
  i = 150 ;
  j = 175;
  
  while (j >= 100) do
  i = i+1; 
    if( j - i <= 0 ) then begin 
      j = j - 2;
      i = i - 1; end
  done
endprogram
