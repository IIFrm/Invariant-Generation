(set-logic HORN)
(declare-fun Hanoi (Int Int) Bool)
(declare-fun ApplyHanoi (Int Int Int) Bool)
(declare-fun Path (Int Int) Bool)
(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(= ?N 1)
		(= ?R 1))
	(Hanoi ?N ?R))))

(assert(
	forall((?N Int)(?R Int)(?NP Int)(?RP Int))
	(=> (and
		(not (= ?N 1))
		(= ?NP (- ?N 1))
		(Hanoi ?NP ?RP)
		(= ?R (+ 1 (* 2 ?RP)))) 
	(Hanoi ?N ?R))))

;ignore the from to and via
(assert(
	forall((?N Int)(?CIN Int)(?COUT Int)(?CP Int)(?CPP Int)(?CPPP Int))
	(=> (and
		(= ?N 0)
		(= ?COUT ?CIN))
	(ApplyHanoi ?N ?CIN ?COUT))))

(assert(
	forall((?N Int)(?NP Int)(?CIN Int)(?COUT Int)(?CP Int)(?CPP Int))
	(=> (and
		(not (= ?N 0))
		(= ?CP (+ 1 ?CIN))
		(= ?NP (- ?N 1))
		(ApplyHanoi ?NP ?CP ?CPP)
		(ApplyHanoi ?NP ?CPP ?COUT))
	(ApplyHanoi ?N ?CIN ?COUT))))

(assert (
	forall((?N Int)(?R Int)(?COUT Int))
	(=> (and
		(> ?N 1)
		(< ?N 32)
		(Hanoi ?N ?R)
		(ApplyHanoi ?N 0 ?COUT))
	(Path ?COUT ?R))))

(assert (
	forall((?R Int)(?C Int))
	(=> (Path ?C ?R) (= ?C ?R))))

