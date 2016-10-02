/*
 * Variant: This one just blindly copies the input into buffer and writes '>''\0' at the end.
 */

#include "assert.h"


int main (void)
{
  //  char buffer[BASE_SZ+1];
  //  char input[BASE_SZ+70];
  //  char *buf;
  //  char *buflim;
  //  char *in;
  //  char cur;
  int __BLAST_NONDET;
  int in;
  int inlen;
  int bufferlen;
  int buf;
  int buflim;

  //tmpl("(le(in,inlen,buf,bufferlen,buflim),le(in,inlen,buf,bufferlen,buflim),le(in,inlen,buf,bufferlen,buflim))");
  tmpl("(le(in,inlen,buf,bufferlen,buflim),le(in,inlen,buf,bufferlen,buflim))");
  
  if(bufferlen >1);else goto END;
  if(inlen > 0);else goto END;
  if(bufferlen < inlen);else goto END;
//  shouldn't be necessary unless checking for safety of *in
//  input[BASE_SZ+70-1] = EOS;
//  in = input;
//  buf = buffer;
  buf = 0;
  in = 0;
  buflim = bufferlen - 2;
    // reserved enough space for both '>' and '\0'!
  // assert(0<=in);
  // assert(in<inlen);
  while (__BLAST_NONDET)
  {
    if (buf == buflim)
      break;
    assert(0<=buf);
    assert(buf<bufferlen); 
    //*buf = cur;
    buf++;
out:
    in++;
    assert(0<=in);//3
    assert(in<inlen);//4
    //cur = *in;
  }

    assert(0<=buf);//5
    assert(buf<bufferlen);//5
  //*buf = '>';
  buf++;

  /* OK */
  assert(0<=buf);//6
  assert(buf<bufferlen);

  //  *buf = EOS;
  buf++;

 END:  return 0;
}
