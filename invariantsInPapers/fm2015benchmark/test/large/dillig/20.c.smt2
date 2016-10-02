(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun h1 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h2 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h3 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h4 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h5 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h6 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h7 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h8 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h9 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h10 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h11 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h12 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h13 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h14 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h15 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h16 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h17 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h18 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h19 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h20 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h21 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h22 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h23 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h24 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h25 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h26 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h27 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h28 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h29 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h30 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h31 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h32 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h33 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h34 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h35 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h36 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h37 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h38 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h39 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h40 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h41 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int))(=> (= 1 1) (h1 A B C D E F G H A B C D E F G H))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h1 A B C D E F G H I J K L M N O P) (h2 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (= I (+ (- J) K)) (h2 A B C D E F G H I J K L M N O P)) (h3 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int))(=> (and (and (= L 0) (= O 0)) (h3 A B C D E F G H I J K Q M N R P)) (h4 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h4 A B C D E F G H I J K L M N O P) (h5 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h5 A B C D E F G H I J K L M N O P) (h6 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h6 A B C D E F G H I J K L M N O P) (h7 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h7 A B C D E F G H I J K L M N O P) (h8 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= (- L N) (- 1)) (h8 A B C D E F G H I J K L M N O P)) (h9 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h9 A B C D E F G H I J K L M N O P) (h10 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= (- L N) 0) (h8 A B C D E F G H I J K L M N O P)) (h11 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h11 A B C D E F G H I J K L M N O P) (h12 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h12 A B C D E F G H I J K L M N O P) (h13 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (= L M) (h10 A B C D E F G H I J K L M N O P)) (h14 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int))(=> (and (and (= Q (+ (- 1) I)) (= R (+ 1 J))) (h14 A B C D E F G H Q R K L M N O P)) (h15 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= (- L M) (- 1)) (h10 A B C D E F G H I J K L M N O P)) (h16 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int))(=> (and (and (= Q (+ (- 1) J)) (= R (+ 1 I))) (h16 A B C D E F G H R Q K L M N O P)) (h17 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= (- L M) 1) (h10 A B C D E F G H I J K L M N O P)) (h18 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int))(=> (and (and (= Q (+ (- 1) J)) (= R (+ 1 I))) (h18 A B C D E F G H R Q K L M N O P)) (h17 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h15 A B C D E F G H I J K L M N O P) (h19 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h17 A B C D E F G H I J K L M N O P) (h19 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h19 A B C D E F G H I J K L M N O P) (h20 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h20 A B C D E F G H I J K L M N O P) (h21 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= P (- 1)) (h21 A B C D E F G H I J K L M N O P)) (h22 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int))(=> (and (= L O) (h22 A B C D E F G H I J K L M N Q P)) (h23 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= P 1) (h21 A B C D E F G H I J K L M N O P)) (h24 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int))(=> (and (= L O) (h24 A B C D E F G H I J K L M N Q P)) (h23 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (= P 0) (h21 A B C D E F G H I J K L M N O P)) (h25 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int))(=> (and (= Q (+ (- 1) L)) (h25 A B C D E F G H I J K Q M N O P)) (h26 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int))(=> (and (= Q (+ (- 1) L)) (h23 A B C D E F G H I J K Q M N O P)) (h26 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h26 A B C D E F G H I J K L M N O P) (h7 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h13 A B C D E F G H I J K L M N O P) (h27 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= (- (+ I J) K) (- 1)) (h27 A B C D E F G H I J K L M N O P)) (h28 A B C D E F G H I J K L M N O P))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(h28 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= (- (+ I J) K) 1) (h27 A B C D E F G H I J K L M N O P)) (h29 A B C D E F G H I J K L M N O P))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(h29 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (= I (+ (- J) K)) (h27 A B C D E F G H I J K L M N O P)) (h30 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h30 A B C D E F G H I J K L M N O P) (h31 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= N 1) (h31 A B C D E F G H I J K L M N O P)) (h32 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h32 A B C D E F G H I J K L M N O P) (h33 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= N 0) (h31 A B C D E F G H I J K L M N O P)) (h34 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h34 A B C D E F G H I J K L M N O P) (h35 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= O (- 1)) (h33 A B C D E F G H I J K L M N O P)) (h36 A B C D E F G H I J K L M N O P))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(h36 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= O 0) (h33 A B C D E F G H I J K L M N O P)) (h37 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h37 A B C D E F G H I J K L M N O P) (h38 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (<= (- N O) 0) (h38 A B C D E F G H I J K L M N O P)) (h39 A B C D E F G H I J K L M N O P))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(h39 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (and (>= (- N O) 1) (h38 A B C D E F G H I J K L M N O P)) (h40 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h40 A B C D E F G H I J K L M N O P) (h35 A B C D E F G H I J K L M N O P))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int))(=> (h35 A B C D E F G H I J K L M N O P) (h41 A B C D E F G H I J K L M N O P))))
(check-sat)
