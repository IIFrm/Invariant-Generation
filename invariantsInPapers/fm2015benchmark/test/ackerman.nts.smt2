;https://github.com/jirislaby/svcomp/blob/master/recursive/Ackermann01_true.c
(set-logic HORN)
(declare-fun Ack (Int Int Int) Bool)
(declare-fun Path (Int Int Int) Bool)

(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (and
		(= ?M 0)
		(= ?R (+ ?N 1)))
	(Ack ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int)(?MP Int))
	(=> (and
		(not(= ?M 0))
		(= ?N 0)
		(= ?MP (- ?M 1))
		(Ack ?MP 1 ?R))
	(Ack ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?NP Int)(?R Int)(?MP Int)(?RP Int))
	(=> (and
		(not(= ?M 0))
		(not(= ?N 0))
		(= ?NP (- ?N 1))
		(= ?MP (- ?M 1))
		(Ack ?MP ?NP ?RP)
		(Ack ?MP ?RP ?R))
	(Ack ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (and
		(>= ?M 0)
		(>= ?N 0)
		(Ack ?M ?N ?R))
	(Path ?M ?N ?R))))

(assert(
	forall((?M Int)(?N Int)(?R Int))
	(=> (Path ?M ?N ?R) (>= ?R 0))))
