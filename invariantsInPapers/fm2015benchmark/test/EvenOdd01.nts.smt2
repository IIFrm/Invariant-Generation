(set-logic HORN)
(declare-fun IsEven (Int Int) Bool)
(declare-fun IsOdd (Int Int) Bool)
(declare-fun Path (Int Int) Bool)

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(= ?N 0)
		(= ?R 0))
	(IsOdd ?N ?R))))

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(not(= ?N 0))
		(= ?N 1)
		(= ?R 1))
	(IsOdd ?N ?R))))

(assert(
	forall((?N Int)(?R Int)(?NP Int))
	(=> (and
		(not(= ?N 0))
		(not(= ?N 1))
		(= ?NP (- ?N 1))
		(IsEven ?NP ?R))
	(IsOdd ?N ?R))))

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(= ?N 0)
		(= ?R 1))
	(IsEven ?N ?R))))

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(not(= ?N 0))
		(= ?N 1)
		(= ?R 0))
	(IsEven ?N ?R))))

(assert(
	forall((?N Int)(?R Int)(?NP Int))
	(=> (and
		(not(= ?N 0))
		(not(= ?N 1))
		(= ?NP (- ?N 1))
		(IsOdd ?NP ?R))
	(IsEven ?N ?R))))

(assert(
	forall((?N Int)(?R Int))
  	(=>  (IsOdd ?N ?R) (= ?R (mod ?N 2)))))



