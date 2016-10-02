// from FreePastry source, file Id.java
  /**
   * Internal method for mapping byte[] -> int[]
   *
   * @param material The input byte[]
   * @return THe int[]
   */
/*
  protected static int[] trans(byte[] material) {
    int[] array = new int[nlen];
    
    for (int j = 0; (j < IdBitLength / 8) && (j < material.length); j++) {
      int k = material[j] & 0xff;
      array[j / 4] |= k << ((j % 4) * 8);
    }
    
    return array;
  }
*/
void main() {
  //  int[] array = new int[nlen];
  int idBitLength, material_length, nlen;
  int j, k;

  tmpl("(le(j,nlen,idBitLength, material_length),le(j,nlen,idBitLength, material_length))");

    assume( nlen  ==  idBitLength / 32 );
    
  for (j = 0; (j < idBitLength / 8) && (j < material_length); j++) {
    assert( 0 <= j);
    assert( j < material_length );
    assert( 0 <= j/4 );
    assert( j/4 < nlen);
    
  }
  
  return;
}
