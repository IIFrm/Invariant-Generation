# 1 "39.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "39.c"

int __BLAST_NONDET;
int MAXPATHLEN;
int unknown(){
    int x; return x;
}
# 15 "39.c"
int main()
{





  int buf_off;
  int pattern_off;
  int bound_off;





  int glob3_pathbuf_off;
  int glob3_pathend_off;
  int glob3_pathlim_off;
  int glob3_pattern_off;
  int glob3_dc;

  if(MAXPATHLEN > 0); else goto END;





  buf_off = 0;
  pattern_off = 0;


  bound_off = 0 + (MAXPATHLEN + 1) - 1;

  glob3_pathbuf_off = buf_off;
  glob3_pathend_off = buf_off;
  glob3_pathlim_off = bound_off;
  glob3_pattern_off = pattern_off;

  glob3_dc = 0;
  for (;;)
    if (glob3_pathend_off + glob3_dc >= glob3_pathlim_off) break;
    else {

      glob3_dc++;

      if(glob3_dc <= -1 || glob3_dc >= MAXPATHLEN + 1)
      {goto ERROR; ERROR:;}
      if (unknown()) goto END;
    }
 END: return 0;
}
