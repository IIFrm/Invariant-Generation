;https://github.com/jirislaby/svcomp/blob/master/recursive/Addition01_true.c
(set-logic HORN)
(declare-fun Add (Int Int Int) Bool)
(declare-fun Path (Int Int Int) Bool)

(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (and
		(= ?N 0)
		(= ?R ?M))
	(Add ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int)(?MP Int)(?NP Int))
	(=> (and
		(> ?N 0)
		(= ?MP (+ ?M 1))
		(= ?NP (- ?N 1))
		(Add ?MP ?NP ?R))
	(Add ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int)(?MP Int)(?NP Int))
	(=> (and
		(< ?N 0)
		(= ?MP (- ?M 1))
		(= ?NP (+ ?N 1))
		(Add ?MP ?NP ?R))
	(Add ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (and
		(> ?M 0)
		(> ?N 0)
		(Add ?M ?N ?R))
	(Path ?M ?N ?R))))



(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (Path ?M ?N ?R)
	(= ?R (+ ?M ?N)))))
