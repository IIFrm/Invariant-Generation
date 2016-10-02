#include "assert.h"

void main ()
{
  int __BLAST_NONDET;
  int scheme;
  int urilen, tokenlen;
  int cp,c;
  //  char *token[TOKEN_SZ];

  tmpl("(le(scheme,urilen,tokenlen,cp,c),le(scheme,urilen,tokenlen,cp,c))");
  if (urilen > 0); else goto END;
  if (tokenlen > 0); else goto END;
  if (scheme >= 0 );else goto END;
  if (scheme == 0
      || (urilen - 1 < scheme)) {
    goto END;
  }

  cp = scheme;
  
  assert(cp - 1 < urilen);
  assert(0 <= cp - 1);

  if (__BLAST_NONDET) {
    assert(cp < urilen);
    assert(0 <= cp);
    while ( cp != urilen - 1) {
      if (__BLAST_NONDET) break;
      assert(cp < urilen);
      assert(0 <= cp);
      ++cp;
    }
    assert(cp < urilen);
    assert( 0 <= cp );
    if (cp == urilen - 1) goto END;
    assert(cp + 1 < urilen);
    assert( 0 <= cp+1 );
    if (cp+1 == urilen - 1) goto END;
    
    ++cp;
    scheme = cp;

    if (__BLAST_NONDET) {
      c = 0;
      //token[0] = uri;
      assert(cp < urilen);
      assert(0<=cp);
      while ( cp != urilen-1
             && c < tokenlen - 1) {
	      assert(cp < urilen);
	      assert(0 <= cp);
        if (__BLAST_NONDET) {
          ++c;
          /* OK */
	        assert(c < tokenlen);
	        assert(0<=c);
          //token[c] = uri + cp + 1;
	        assert(cp < urilen); //Interesting assert
	        assert(0<=cp);
          //uri[cp] = EOS;
        }
        ++cp;
      }
      goto END;
    }
  }

  END:
}
