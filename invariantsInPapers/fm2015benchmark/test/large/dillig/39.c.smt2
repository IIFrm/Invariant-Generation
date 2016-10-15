(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun h1 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h2 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h3 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h4 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h5 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h6 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h7 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h8 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h9 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h10 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h11 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h12 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h13 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h14 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h15 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h16 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h17 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h18 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h19 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h20 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h21 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h22 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h23 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h24 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h25 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h26 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h27 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h28 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h29 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h30 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h31 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (= 1 1) (h1 A B C D E F G H I J A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h1 A B C D E F G H I J K L M N O P Q R S T) (h2 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (>= K 1) (h2 A B C D E F G H I J K L M N O P Q R S T)) (h3 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int))(=> (and (and (and (and (and (and (= M 0) (= N 0)) (= P 0)) (= R 0)) (= K Q)) (= O Q)) (h3 A B C D E F G H I J K L U V W X Y Z S T)) (h4 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (<= K 0) (h2 A B C D E F G H I J K L M N O P Q R S T)) (h5 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h5 A B C D E F G H I J K L M N O P Q R S T) (h6 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int))(=> (and (= T 0) (h6 A B C D E F G H I J K L M N O P Q R S U)) (h7 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h4 A B C D E F G H I J K L M N O P Q R S T) (h8 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h8 A B C D E F G H I J K L M N O P Q R S T) (h9 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h9 A B C D E F G H I J K L M N O P Q R S T) (h10 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h10 A B C D E F G H I J K L M N O P Q R S T) (h11 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (>= (+ (- P Q) R) 0) (h11 A B C D E F G H I J K L M N O P Q R S T)) (h12 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h12 A B C D E F G H I J K L M N O P Q R S T) (h13 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (<= (+ (- P Q) R) (- 1)) (h11 A B C D E F G H I J K L M N O P Q R S T)) (h14 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int))(=> (and (= U (+ (- 1) R)) (h14 A B C D E F G H I J K L M N O P Q U S T)) (h15 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h13 A B C D E F G H I J K L M N O P Q R S T) (h16 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h15 A B C D E F G H I J K L M N O P Q R S T) (h17 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (<= R (- 1)) (h17 A B C D E F G H I J K L M N O P Q R S T)) (h18 A B C D E F G H I J K L M N O P Q R S T))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(h18 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (>= R 0) (h17 A B C D E F G H I J K L M N O P Q R S T)) (h19 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h19 A B C D E F G H I J K L M N O P Q R S T) (h20 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (<= (- K R) (- 1)) (h20 A B C D E F G H I J K L M N O P Q R S T)) (h21 A B C D E F G H I J K L M N O P Q R S T))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(h21 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (>= (- K R) 0) (h20 A B C D E F G H I J K L M N O P Q R S T)) (h22 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h22 A B C D E F G H I J K L M N O P Q R S T) (h23 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h23 A B C D E F G H I J K L M N O P Q R S T) (h24 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h24 A B C D E F G H I J K L M N O P Q R S T) (h25 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (<= S (- 1)) (h25 A B C D E F G H I J K L M N O P Q R S T)) (h26 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h26 A B C D E F G H I J K L M N O P Q R S T) (h27 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (>= S 1) (h25 A B C D E F G H I J K L M N O P Q R S T)) (h28 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h28 A B C D E F G H I J K L M N O P Q R S T) (h27 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (and (= S 0) (h25 A B C D E F G H I J K L M N O P Q R S T)) (h29 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h29 A B C D E F G H I J K L M N O P Q R S T) (h10 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int))(=> (and (= T 0) (h27 A B C D E F G H I J K L M N O P Q R S U)) (h7 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int))(=> (and (= T 0) (h16 A B C D E F G H I J K L M N O P Q R S U)) (h7 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h7 A B C D E F G H I J K L M N O P Q R S T) (h30 A B C D E F G H I J K L M N O P Q R S T))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int))(=> (h30 A B C D E F G H I J K L M N O P Q R S T) (h31 A B C D E F G H I J K L M N O P Q R S T))))
(check-sat)