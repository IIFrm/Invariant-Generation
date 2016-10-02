(set-logic HORN)
(declare-fun Loop (Int Int Int Int) Bool)
(declare-fun Trace (Int) Bool)

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (and
		(= ?X ?XP)
		(= ?Y ?YP)
		)
	(Loop ?X ?XP ?Y ?YP))))

(assert(
	forall((?X Int)(?XP Int)(?XPP Int)(?Y Int) (?YP Int)(?YPP Int)(?T1 Int))
	(=> (and
		(= ?XP (+ ?X ?Y))
		(= ?YP (+ ?X ?Y))
		(Loop ?XP ?XPP ?YP ?YPP))
	(Loop ?X ?XPP ?Y ?YPP))))

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (and
		(= ?X 1)
		(= ?Y 1)
		(Loop ?X ?XP ?Y ?YP))
	(Trace ?YP ))))

(assert(
	forall((?YP Int))
	(=> (Trace ?YP )
	(>= ?YP 1))))
