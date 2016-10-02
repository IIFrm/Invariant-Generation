(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun h1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h2 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h3 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h4 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h6 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h7 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h8 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h9 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h10 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h11 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h12 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h13 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h14 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h15 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h16 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h17 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h18 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h19 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h20 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h21 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h22 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h23 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h24 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h25 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun h26 (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))(=> (= 1 1) (h1 A B C D E A B C D E))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int))(=> (and (and (and (and (= G 0) (= H 0)) (= I 0)) (= J 10)) (h1 A B C D E F K L M N)) (h2 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h2 A B C D E F G H I J) (h3 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h3 A B C D E F G H I J) (h4 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h4 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h5 A B C D E F G H I J) (h6 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (>= (- F I) 1) (h6 A B C D E F G H I J)) (h7 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int))(=> (and (and (= K (+ (- 1) I)) (= L (+ (- 1) G))) (h7 A B C D E F L H K J)) (h8 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (<= (- F I) 0) (h6 A B C D E F G H I J)) (h9 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h9 A B C D E F G H I J) (h10 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h10 A B C D E F G H I J) (h11 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h8 A B C D E F G H I J) (h12 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (= (mod I 2) 0) (h12 A B C D E F G H I J)) (h13 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int))(=> (and (= K (+ (- 1) H)) (h13 A B C D E F G K I J)) (h14 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (not (= (mod I 2) 0)) (h12 A B C D E F G H I J)) (h15 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h15 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (not (= (mod I 2) 0)) (h12 A B C D E F G H I J)) (h16 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h16 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h14 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h11 A B C D E F G H I J) (h17 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (= I J) (h17 A B C D E F G H I J)) (h18 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h18 A B C D E F G H I J) (h19 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (<= (- I J) (- 1)) (h17 A B C D E F G H I J)) (h20 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h20 A B C D E F G H I J) (h21 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (>= (- I J) 1) (h17 A B C D E F G H I J)) (h22 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h22 A B C D E F G H I J) (h21 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (<= (- G (* 2 H)) (- 1)) (h19 A B C D E F G H I J)) (h23 A B C D E F G H I J))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(h23 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (>= (- G (* 2 H)) 1) (h19 A B C D E F G H I J)) (h24 A B C D E F G H I J))))
(assert (not (exists ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(h24 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (and (= G (* 2 H)) (h19 A B C D E F G H I J)) (h25 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h25 A B C D E F G H I J) (h21 A B C D E F G H I J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int))(=> (h21 A B C D E F G H I J) (h26 A B C D E F G H I J))))
(check-sat)
