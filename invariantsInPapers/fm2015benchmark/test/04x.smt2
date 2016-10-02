(set-logic HORN)
(declare-fun Loop (Int Int Int Int) Bool)
(declare-fun Trace ( Int) Bool)

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (not (Loop ?X ?XP ?Y ?YP))
		(not (and
		(>= ?X 0)
		(= ?X ?XP)
		(= ?Y ?YP)
		))
	)))

(assert(
	forall((?X Int)(?XP Int)(?XPP Int)(?Y Int) (?YP Int)(?YPP Int))
	(=> (and
		(< ?X 0)
		(= ?XP (+ ?X ?Y))
		(= ?YP (+ ?Y 1))
		(Loop ?XP ?YP ?XPP ?YPP)
		(not (Loop ?X ?XPP ?Y ?YPP)))		
	(not (and
		(< ?X 0)
		(= ?XP (+ ?X ?Y))
		(= ?YP (+ ?Y 1))))
	)))

(assert(
	forall((?X Int)(?XP Int)(?Y Int) (?YP Int))
	(=> (and
		(Loop ?X ?XP ?Y ?YP)
		(not 	(Trace ?YP ))
		)
		(not (and (= ?Y 0)
		(= ?X (- 0 50))))	
	)))

(assert(
	forall((?Y Int) )
	(=> 
	(not (> ?Y 0))
	(not (Trace ?Y))
	)))
