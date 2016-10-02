#include "assert.h"
void main()
{
  int tagbuf_len;
  int t;
  int __BLAST_NONDET;

  tmpl("(le(tagbuf_len, t), le(tagbuf_len, t))");
  //  tmpl("le(tagbuf_len, t)");
  
  if(tagbuf_len >= 1); else goto END;

  t = 0;

  --tagbuf_len;
  /*
  do {
    GET_CHAR(c, NULL);
  } while (ap_isspace(c));
  */

  /*
  if (c == '-') {
    GET_CHAR(c, NULL);
    if (c == '-') {
      do {
        GET_CHAR(c, NULL);
      } while (ap_isspace(c));
      if (c == '>') {
        ap_cpystrn(tag, "done", tagbuf_len);
        return tag;
      }
    }
    return NULL;
  }
  */

  while (1) {
    if (t == tagbuf_len) {
      assert(0 <= t);
      assert(t <= tagbuf_len);
      //      tag[t] = EOS;
      goto END;
    }
    if (__BLAST_NONDET) {
      break;
    }
     assert(0 <= t);
     assert(t <= tagbuf_len);
    //    tag[t] = ap_tolower(c);
    t++;
    //    GET_CHAR(c, NULL);
  }

   assert(0 <= t);
   assert(t <= tagbuf_len);
  //  tag[t] = EOS;
  t++;
  //  tag_val = tag + t;
  /*
  while (ap_isspace(c)) {
    GET_CHAR(c, NULL);
  }
  if (c != '=') {
    return NULL;
  }

  do {
    GET_CHAR(c, NULL);
  } while (ap_isspace(c));

  if (c != '"' && c != '\'') {
    return NULL;
  }
  term = c;
  */
  while (1) {
    //    GET_CHAR(c, NULL);
    if (t == tagbuf_len) { /* Suppose t == tagbuf_len - 1 */
      assert(0 <= t);
      assert(t <= tagbuf_len);
      //      tag[t] = EOS;
      goto END;
    }

    if (__BLAST_NONDET) {
      //      GET_CHAR(c, NULL);
      if ( __BLAST_NONDET) {
        /* OK */
	 assert(0 <= t);
	assert(t <= tagbuf_len); // interesting assert, t2.
	//        tag[t] = '\\';
        t++;
        if (t == tagbuf_len) {
          /* OK */
	  assert(0 <= t);
	  assert(t <= tagbuf_len);
	  //          tag[t] = EOS;
          goto END;
        }
      }
    }
    else if ( __BLAST_NONDET) {
      break;
    }

    /* OK */
    assert(0 <= t);
    assert(t <= tagbuf_len);
    //    tag[t] = c;    
    t++;                /* Now t == tagbuf_len + 1 
                         * So the bounds check (t == tagbuf_len) will fail */
  }
  /* OK */ 
  assert(0 <= t);
  assert(t <= tagbuf_len);
  //  tag[t] = EOS;

  END:
}
