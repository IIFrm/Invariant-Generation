(set-logic HORN)
(declare-fun Loop (Int Int Int Int) Bool)
(declare-fun Trace ( Int) Bool)

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (and
		(>= ?X 0)
		(= ?X ?XP)
		(= ?Y ?YP)
		)
	(Loop ?X ?XP ?Y ?YP))))

(assert(
	forall((?X Int)(?XP Int)(?XPP Int)(?Y Int) (?YP Int)(?YPP Int))
	(=> (and
		(< ?X 0)
		(= ?XP (+ ?X ?Y))
		(= ?YP (+ ?Y 1))
		(Loop ?XP ?XPP ?YP ?YPP))
	(Loop ?X ?XPP ?Y ?YPP))))

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (and
		(= ?Y 0)
		(= ?X (- 0 50))
		(Loop ?X ?XP ?Y ?YP))
	(Trace ?YP ))))

(assert(
	forall((?Y Int) )
	(=> (Trace ?Y  )
	(> ?Y 0))))
