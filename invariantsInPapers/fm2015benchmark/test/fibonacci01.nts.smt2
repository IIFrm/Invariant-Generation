;https://github.com/jirislaby/svcomp/blob/master/recursive/Fibonacci01_true.c
(set-logic HORN)
(declare-fun Fib (Int Int) Bool)
(declare-fun Path (Int Int) Bool)

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(< ?N 1)
		(= ?R 0))
	(Fib ?N ?R))))

(assert(
	forall((?N Int)(?R Int))
	(=> (and
		(= ?N 1)
		(= ?R 1))
	(Fib ?N ?R))))

(assert(
	forall((?N Int)(?R Int)(?NP Int)(?NPP Int)(?RP Int)(?RPP Int))
	(=> (and
		;simplifying by not bothering to include n != 1
		(> ?N 1)
		(= ?NP (- ?N 1))
		(Fib ?NP ?RP)
		(= ?NPP (- ?N 2))
		(Fib ?NPP ?RPP)
		(= ?R (+ ?RP ?RPP)))
	(Fib ?N ?R))))

;Now define the path
(assert(
	forall((?X Int)(?XP Int)(?R Int))
	(=> (and
		(< ?X 46)
		(Fib ?X ?R))
	(=> (Path ?X ?R)))))

(assert(
	forall((?X Int)(?R Int))
	(=> (Path ?X ?R)
	(>= ?R (- ?X 1)))))
;	(>= ?R ?X))))

