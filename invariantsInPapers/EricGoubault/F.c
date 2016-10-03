int main(int N) {
  double E, E0, E1, S0, S1, S;
  double A1, A2, A3;
  double B1, B2;
  int i;
  A1 = DBETWEEN(0.5, 0.8);
  A2 = DBETWEEN(-1.5,-1);
  A3 = DBETWEEN(0.8,1.3);
  B1 = DBETWEEN(1.39,1.41);
  B2 = DBETWEEN(-0.71,-0.69);
  E=DBETWEEN(0,1.0);
  E0=DBETWEEN(0,1.0);
  for (i=1;i<=N;i++) {
    E1 = E0;
    E0 = E;
    E = DBETWEEN(0,1.0);
    S1 = S0;
    S0 = S;
    S = A1 * E + E0 * A2 + E1 * A3 + S0 * B1 + S1 * B2 ;
    DPRINT(S);
  }
  DSENSITIVITY(S);
  return 0;
}
