(set-logic HORN)
(declare-fun For (Int Int Int Int Int) Bool)
(declare-fun Trace (Int Int) Bool)

(assert(
	forall((?X Int)(?I Int)(?IP Int) (?J Int) (?JP Int))
	(=> (and
		(>= ?I ?X)
		(= ?I ?IP)
		(= ?J ?JP)
		)
	(For ?X ?I ?IP ?J ?JP))))

(assert(
	forall((?X Int)(?I Int)(?IP Int)(?IPP Int) (?J Int)(?JP Int)(?JPP Int))
	(=> (and
		(< ?I ?X)
		(= ?JP (+ ?J 2))
		(= ?IP (+ ?I 1))
		(For ?X ?IP ?IPP ?JP ?JPP)
		)
	(For ?X ?I ?IPP ?J ?JPP))))


(assert(
	forall((?X Int)(?I Int)(?IP Int) (?J Int) (?JP Int))
	(=> (and
		(= ?J 0)
		(= ?I 0)
		(= ?X 2)
		(For ?X ?I ?IP ?J ?JP)
		)
	(Trace ?X ?JP ))))


(assert(
	forall((?X Int) (?J Int))
	(=> (Trace ?X ?J )
	(= ?J (* 2 ?X)))))
